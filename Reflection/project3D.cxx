#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <vector>
#include <string>

using std::endl;
using std::cerr;

using namespace std;

#include <GL/glew.h>    // include GLEW and new version of GL on Windows
#include <GLFW/glfw3.h> // GLFW helper library

#define GLM_ENABLE_EXPERIMENTAL
#include <glm/vec3.hpp>   // glm::vec3
#include <glm/vec4.hpp>   // glm::vec4
#include <glm/mat4x4.hpp> // glm::mat4
#include <glm/gtx/string_cast.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glm/gtc/matrix_transform.hpp>  // glm::translate, glm::rotate, glm::scale

class RenderManager;

void        SetUpDog(int, RenderManager &);
void        SetUpHouseFinally(RenderManager &);
const char *GetVertexShader();
const char *GetFragmentShader();

// This file is split into four parts:
// - Part 1: code to set up spheres and cylinders
// - Part 2: a "RenderManager" module
// - Part 3: main function
// - Part 4: SetUpDog and the shader programs -- things you modify
//
// It is intended that you will only need to modify code in Part 4.
// That said, you will need functions in Part 2 and should review
// those functions.
// Further, you are encouraged to look through the entire code base.
//


//
//
// PART 1: code to set up spheres and cylinders
//
//

class Triangle
{
  public:
    glm::vec3 v0;
    glm::vec3 v1;
    glm::vec3 v2;
};

std::vector<Triangle> SplitTriangle(std::vector<Triangle> &list)
{
    std::vector<Triangle> output(4*list.size());
    output.resize(4*list.size());
    for (unsigned int i = 0 ; i < list.size() ; i++)
    {
        Triangle t = list[i];
        glm::vec3 vmid1, vmid2, vmid3;
        vmid1 = (t.v0 + t.v1) / 2.0f;
        vmid2 = (t.v1 + t.v2) / 2.0f;
        vmid3 = (t.v0 + t.v2) / 2.0f;
        output[4*i+0].v0 = t.v0;
        output[4*i+0].v1 = vmid1;
        output[4*i+0].v2 = vmid3;
        output[4*i+1].v0 = t.v1;
        output[4*i+1].v1 = vmid2;
        output[4*i+1].v2 = vmid1;
        output[4*i+2].v0 = t.v2;
        output[4*i+2].v1 = vmid3;
        output[4*i+2].v2 = vmid2;
        output[4*i+3].v0 = vmid1;
        output[4*i+3].v1 = vmid2;
        output[4*i+3].v2 = vmid3;
    }
    return output;
}

void PushVertex(std::vector<float>& coords,
                const glm::vec3& v)
{
  coords.push_back(v.x);
  coords.push_back(v.y);
  coords.push_back(v.z);
}

//
// Sets up a cylinder that is the circle x^2+y^2=1 extruded from
// Z=0 to Z=1.
//
void GetCylinderData(std::vector<float>& coords, std::vector<float>& normals)
{
  int nfacets = 30;
  for (int i = 0 ; i < nfacets ; i++)
  {
    double angle = 3.14159*2.0*i/nfacets;
    double nextAngle = (i == nfacets-1 ? 0 : 3.14159*2.0*(i+1)/nfacets);
    glm::vec3 fnormal(0.0f, 0.0f, 1.0f);
    glm::vec3 bnormal(0.0f, 0.0f, -1.0f);
    glm::vec3 fv0(0.0f, 0.0f, 1.0f);
    glm::vec3 fv1(cos(angle), sin(angle), 1);
    glm::vec3 fv2(cos(nextAngle), sin(nextAngle), 1);
    glm::vec3 bv0(0.0f, 0.0f, 0.0f);
    glm::vec3 bv1(cos(angle), sin(angle), 0);
    glm::vec3 bv2(cos(nextAngle), sin(nextAngle), 0);
    // top and bottom circle vertices
    PushVertex(coords, fv0);
    PushVertex(normals, fnormal);
    PushVertex(coords, fv1);
    PushVertex(normals, fnormal);
    PushVertex(coords, fv2);
    PushVertex(normals, fnormal);
    PushVertex(coords, bv0);
    PushVertex(normals, bnormal);
    PushVertex(coords, bv1);
    PushVertex(normals, bnormal);
    PushVertex(coords, bv2);
    PushVertex(normals, bnormal);
    // curves surface vertices
    glm::vec3 v1normal(cos(angle), sin(angle), 0);
    glm::vec3 v2normal(cos(nextAngle), sin(nextAngle), 0);
    //fv1 fv2 bv1
    PushVertex(coords, fv1);
    PushVertex(normals, v1normal);
    PushVertex(coords, fv2);
    PushVertex(normals, v2normal);
    PushVertex(coords, bv1);
    PushVertex(normals, v1normal);
    //fv2 bv1 bv2
    PushVertex(coords, fv2);
    PushVertex(normals, v2normal);
    PushVertex(coords, bv1);
    PushVertex(normals, v1normal);
    PushVertex(coords, bv2);
    PushVertex(normals, v2normal);
  }
}

//
// Sets up a sphere with equation x^2+y^2+z^2=1
//
void
GetSphereData(std::vector<float>& coords, std::vector<float>& normals)
{
  int recursionLevel = 3;
  std::vector<Triangle> list;
  {
    Triangle t;
    t.v0 = glm::vec3(1.0f,0.0f,0.0f);
    t.v1 = glm::vec3(0.0f,1.0f,0.0f);
    t.v2 = glm::vec3(0.0f,0.0f,1.0f);
    list.push_back(t);
  }
  for (int r = 0 ; r < recursionLevel ; r++)
  {
      list = SplitTriangle(list);
  }

  for (int octant = 0 ; octant < 8 ; octant++)
  {
    glm::mat4 view(1.0f);
    float angle = 90.0f*(octant%4);
    if(angle != 0.0f)
      view = glm::rotate(view, glm::radians(angle), glm::vec3(1, 0, 0));
    if (octant >= 4)
      view = glm::rotate(view, glm::radians(180.0f), glm::vec3(0, 0, 1));
    for(int i = 0; i < list.size(); i++)
    {
      Triangle t = list[i];
      float mag_reci;
      glm::vec3 v0 = view*glm::vec4(t.v0, 1.0f);
      glm::vec3 v1 = view*glm::vec4(t.v1, 1.0f);
      glm::vec3 v2 = view*glm::vec4(t.v2, 1.0f);
      mag_reci = 1.0f / glm::length(v0);
      v0 = glm::vec3(v0.x * mag_reci, v0.y * mag_reci, v0.z * mag_reci);
      mag_reci = 1.0f / glm::length(v1);
      v1 = glm::vec3(v1.x * mag_reci, v1.y * mag_reci, v1.z * mag_reci);
      mag_reci = 1.0f / glm::length(v2);
      v2 = glm::vec3(v2.x * mag_reci, v2.y * mag_reci, v2.z * mag_reci);
      PushVertex(coords, v0);
      PushVertex(coords, v1);
      PushVertex(coords, v2);
      PushVertex(normals, v0);
      PushVertex(normals, v1);
      PushVertex(normals, v2);
    }
  }
}


//
//
// PART 2: RenderManager module
//
//

void _print_shader_info_log(GLuint shader_index) {
  int max_length = 2048;
  int actual_length = 0;
  char shader_log[2048];
  glGetShaderInfoLog(shader_index, max_length, &actual_length, shader_log);
  printf("shader info log for GL index %u:\n%s\n", shader_index, shader_log);
}

class RenderManager
{
  public:
   enum ShapeType
   {
      SPHERE,
      CYLINDER,
       HOUSE
   };

                 RenderManager();
   void          SetView(glm::vec3 &c, glm::vec3 &, glm::vec3 &);
   void          SetUpGeometry();
//    void         SetUpHouseForRendering();
   void          SetColor(double r, double g, double b);
   void          Render(ShapeType, glm::mat4 model);
   GLFWwindow   *GetWindow() { return window; };

  private:
   glm::vec3 color;
   GLuint sphereVAO;
   GLuint sphereNumPrimitives;
   GLuint cylinderVAO;
   GLuint cylinderNumPrimitives;
    GLuint houseVAO;
    GLuint houseNumPrimitives;
    GLuint normalloc;
   GLuint mvploc;
   GLuint colorloc;
   GLuint camloc;
   GLuint ldirloc;
   glm::mat4 projection;
   glm::mat4 view;
   GLuint shaderProgram;
   GLFWwindow *window;

   void SetUpWindowAndShaders();
   void MakeModelView(glm::mat4 &);
};

RenderManager::RenderManager()
{
  SetUpWindowAndShaders();
  SetUpGeometry();
  projection = glm::perspective(
        glm::radians(45.0f), (float)1000 / (float)1000,  5.0f, 100.0f);

  // Get a handle for our MVP and color uniforms
  mvploc = glGetUniformLocation(shaderProgram, "MVP");
    normalloc = glGetUniformLocation(shaderProgram, "MVT");
  colorloc = glGetUniformLocation(shaderProgram, "color");
  camloc = glGetUniformLocation(shaderProgram, "cameraloc");
  ldirloc = glGetUniformLocation(shaderProgram, "lightdir");

  glm::vec4 lightcoeff(0.3, 0.7, 2.8, 50.5); // Lighting coeff, Ka, Kd, Ks, alpha
  GLuint lcoeloc = glGetUniformLocation(shaderProgram, "lightcoeff");
  glUniform4fv(lcoeloc, 1, &lightcoeff[0]);
}

void
RenderManager::SetView(glm::vec3 &camera, glm::vec3 &origin, glm::vec3 &up)
{ 
   glm::mat4 v = glm::lookAt(
                       camera, // Camera in world space
                       origin, // looks at the origin
                       up      // and the head is up
                 );
   view = v; 
   glUniform3fv(camloc, 1, &camera[0]);
   // Direction of light
   glm::vec3 lightdir = glm::normalize(camera - origin);   
   glUniform3fv(ldirloc, 1, &lightdir[0]);
};

void
RenderManager::SetUpWindowAndShaders()
{
  // start GL context and O/S window using the GLFW helper library
  if (!glfwInit()) {
    fprintf(stderr, "ERROR: could not start GLFW3\n");
    exit(EXIT_FAILURE);
  }

  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 4);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
  glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

  window = glfwCreateWindow(700, 700, "CIS 441", NULL, NULL);
  if (!window) {
    fprintf(stderr, "ERROR: could not open window with GLFW3\n");
    glfwTerminate();
    exit(EXIT_FAILURE);
  }
  glfwMakeContextCurrent(window);
  // start GLEW extension handler
  glewExperimental = GL_TRUE;
  glewInit();

  // get version info
  const GLubyte *renderer = glGetString(GL_RENDERER); // get renderer string
  const GLubyte *version = glGetString(GL_VERSION);   // version as a string
  printf("Renderer: %s\n", renderer);
  printf("OpenGL version supported %s\n", version);

  // tell GL to only draw onto a pixel if the shape is closer to the viewer
  glEnable(GL_DEPTH_TEST); // enable depth-testing
  glDepthFunc(GL_LESS); // depth-testing interprets a smaller value as "closer"

  const char* vertex_shader = GetVertexShader();
  const char* fragment_shader = GetFragmentShader();

  GLuint vs = glCreateShader(GL_VERTEX_SHADER);
  glShaderSource(vs, 1, &vertex_shader, NULL);
  glCompileShader(vs);
  int params = -1;
  glGetShaderiv(vs, GL_COMPILE_STATUS, &params);
  if (GL_TRUE != params) {
    fprintf(stderr, "ERROR: GL shader index %i did not compile\n", vs);
    _print_shader_info_log(vs);
    exit(EXIT_FAILURE);
  }

  GLuint fs = glCreateShader(GL_FRAGMENT_SHADER);
  glShaderSource(fs, 1, &fragment_shader, NULL);
  glCompileShader(fs);
  glGetShaderiv(fs, GL_COMPILE_STATUS, &params);
  if (GL_TRUE != params) {
    fprintf(stderr, "ERROR: GL shader index %i did not compile\n", fs);
    _print_shader_info_log(fs);
    exit(EXIT_FAILURE);
  }

  shaderProgram = glCreateProgram();
  glAttachShader(shaderProgram, fs);
  glAttachShader(shaderProgram, vs);
  glLinkProgram(shaderProgram);
  glUseProgram(shaderProgram);
}

void RenderManager::SetColor(double r, double g, double b)
{
   color[0] = r;
   color[1] = g;
   color[2] = b;
}

void RenderManager::MakeModelView(glm::mat4 &model)
{
   glm::mat4 modelview = projection * view * model;
//    void glUniformMatrix4fv(
//         GLint location,
//         GLsizei count,
//         GLboolean transpose,
//         const GLfloat *value);
   glUniformMatrix4fv(mvploc, 1, GL_FALSE, &modelview[0][0]);
    glUniformMatrix4fv(normalloc, 1, GL_FALSE, &modelview[0][0]);   // How to calculate modelNormalTransform 101?
}

void RenderManager::Render(ShapeType st, glm::mat4 model)
{
   int numPrimitives = 0;
   if (st == SPHERE)
   {
      glBindVertexArray(sphereVAO);
      numPrimitives = sphereNumPrimitives;
   }
   else if (st == CYLINDER)
   {
      glBindVertexArray(cylinderVAO);
      numPrimitives = cylinderNumPrimitives;
   }
   else if (st == HOUSE) {
       glBindVertexArray(houseVAO);
       numPrimitives = houseNumPrimitives;
   }
   MakeModelView(model);
   glUniform3fv(colorloc, 1, &color[0]);
   glDrawElements(GL_TRIANGLES, numPrimitives, GL_UNSIGNED_INT, NULL);
}

void SetUpVBOs(std::vector<float> &coords, std::vector<float> &normals,
               GLuint &points_vbo, GLuint &normals_vbo, GLuint &index_vbo)
{
  int numIndices = coords.size()/3;
  std::vector<GLuint> indices(numIndices);
  for(int i = 0; i < numIndices; i++)
    indices[i] = i;

  points_vbo = 0;
  glGenBuffers(1, &points_vbo);
  glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
  glBufferData(GL_ARRAY_BUFFER, coords.size() * sizeof(float), coords.data(), GL_STATIC_DRAW);

  normals_vbo = 0;
  glGenBuffers(1, &normals_vbo);
  glBindBuffer(GL_ARRAY_BUFFER, normals_vbo);
  glBufferData(GL_ARRAY_BUFFER, normals.size() * sizeof(float), normals.data(), GL_STATIC_DRAW);

  index_vbo = 0;    // Index buffer object
  glGenBuffers(1, &index_vbo);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, index_vbo);
  glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(GLuint), indices.data(), GL_STATIC_DRAW);
}

void SetUpHouseVBOs(GLuint &points_vbo, GLuint &normals_vbo, GLuint &index_vbo, GLuint &houseNumPrimitives)
{
//  Points of the mirror, use this to calculate point of house
//    1.5f, 2.0f, -9.0f,
//    4.5f, 2.0f, -9.0f,
//    4.5f, -2.25f, -9.0f,
//    1.5f, -2.25f, -9.0f,
//
//    1.5f, 2.0f, 1.5f,
//    4.5f, 2.0f, 1.5f,
//    4.5f, -2.25f, 1.5f,
//    1.5f, -2.25f, 1.5f,
//
//    6.0f, 2.0f, -7.0f,
//    6.0f, 2.0f, 1.0f,
//    6.0f, -2.25f, 1.0f,
//    6.0f, -2.25f, -7.0f,
//
//    0.0f, 2.0f, -7.0f,
//    0.0f, 2.0f, 1.0f,
//    0.0f, -2.25f, 1.0f,
//    0.0f, -2.25f, -7.0f,

    GLfloat points[] = {
        3.0f, 6.0f, -4.25f,      // 0
        
        -1.0f, -2.25f, 2.5f,     // 1
        7.0f, -2.25f, 2.5f,     // 2
        7.0f, 4.0f, 2.5f,       // 3
        -1.0f, 4.0f, 2.5f,       // 4
        
        7.0f, -2.25f, -10.0f,     // 5
        -1.0f, -2.25f, -10.0f,     // 6
        -1.0f, 4.0f, -10.0f,       // 7
        7.0f, 4.0f, -10.0f,       // 8
        
        1.5f, 4.0f, 2.5f,        // 9
        4.5f, 4.0f, 2.5f,        // 10
        7.0f, 4.0f, 1.0f,        // 11
        7.0f, 4.0f, -7.0f,       // 12
        4.5f, 4.0f, -10.0f,       // 13
        1.5f, 4.0f, -10.0f,       // 14
        -1.0f, 4.0f, -7.0f,       // 15
        -1.0f, 4.0f, 1.0f,        // 16
        
        1.5f, 2.0f, 2.5f,        // 17
        4.5f, 2.0f, 2.5f,        // 18
        7.0f, 2.0f, 1.0f,        // 19
        7.0f, 2.0f, -7.0f,       // 20
        4.5f, 2.0f, -10.0f,       // 21
        1.5f, 2.0f, -10.0f,       // 22
        -1.0f, 2.0f, -7.0f,       // 23
        -1.0f, 2.0f, 1.0f,        // 24
        
        1.5f, -2.25f, 2.5f,      // 25
        4.5f, -2.25f, 2.5f,      // 26
        7.0f, -2.25f, 1.0f,      // 27
        7.0f, -2.25f, -7.0f,     // 28
        4.5f, -2.25f, -10.0f,     // 29
        1.5f, -2.25f, -10.0f,     // 30
        -1.0f, -2.25f, -7.0f,     // 31
        -1.0f, -2.25f, 1.0f,      // 32
    };

    float normals[] = {
        0.377f, 0.755f, -0.535f,    // 0
        
        -0.285f, -0.641f, 0.712f,   // 1
        0.901f, -0.29f, 0.322f,     // 2
        0.83f, 0.47f, 0.296f,         // 3
        -0.2f, 0.83f, 0.52f,         // 4
        
        0.564f, -0.18f, -0.8f,         // 5
        -0.1f, -0.218f, -0.97f,         // 6
        -0.09f, 0.37f, -0.924f,         // 7
        -0.545f, 0.31f, -0.778f,         // 8
        
        0.3f, 0.8f, 0.5f,         // 9
        0.69f, 0.61f, 0.38f,         // 10
        0.95f, 0.27f, 0.136f,         // 11
        0.65f, 0.37f, -0.65f,         // 12
        0.38f, 0.34f, -0.85f,         // 13
        0.138f, 0.36f, -0.92f,         // 14
        -0.123f, 0.49f, -0.86f,         // 15
        -0.23f, 0.94f, -0.23f,         // 16
        
        0.42f, 0.56f, 0.7f,         // 17
        0.81f, 0.36f, 0.45f,         // 18
        0.95f, 0.27f, 0.136f,         // 19
        0.69f, 0.198f, -0.69f,         // 20
        0.4f, 0.18f, -0.897f,         // 21
        0.14f, 0.19f, -0.97f,         // 22
        -0.136f, 0.27f, -0.95f,         // 23
        -0.4f, 0.8f, 0.4f,         // 24
        
        0.4f, -0.6f, 0.67f,         // 25
        0.8f, -0.4f, 0.44f,         // 26
        0.94f, -0.3f, 0.134f,         // 27
        0.69f, -0.22f, -0.69f,         // 28
        0.4f, -0.2f, -0.89f,         // 29
        0.14f, -0.21f, -0.96f,         // 30
        -0.13f, -0.3f, -0.94f,         // 31
        -0.37f, -0.84f, -0.37f,         // 32
    };

    GLuint indices[] = {
        // Front
        1,4,9,
        1,9,25,
        9,10,17,
        17,10,18,
        10,3,26,
        3,26,2,
        
        // Right
        3,11,2,
        11,2,27,
        11,12,19,
        12,19,20,
        12,8,5,
        12,5,28,
        
        // Back
        13,8,5,
        13,5,29,
        13,14,22,
        13,21,22,
        7,14,30,
        30,6,7,
        
        // Left
        15,7,6,
        15,31,6,
        15,16,23,
        16,23,24,
        4,16,32,
        4,32,1,
        
        // Top
        0,4,7,
        0,7,8,
        0,8,3,
        0,3,4,
        
        // Bottom
        1,5,6,
        1,5,2
    };
    
    points_vbo = 0;
    glGenBuffers(1, &points_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, points_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(points), points, GL_STATIC_DRAW);

    normals_vbo = 0;
    glGenBuffers(1, &normals_vbo);
    glBindBuffer(GL_ARRAY_BUFFER, normals_vbo);
    glBufferData(GL_ARRAY_BUFFER, sizeof(normals), normals, GL_STATIC_DRAW);

    index_vbo = 0;    // Index buffer object
    glGenBuffers( 1, &index_vbo);
    glBindBuffer( GL_ELEMENT_ARRAY_BUFFER, index_vbo );
    glBufferData( GL_ELEMENT_ARRAY_BUFFER, sizeof(indices), indices, GL_STATIC_DRAW );
    
    houseNumPrimitives = sizeof(indices) / sizeof(GLuint);  // How many triangles to render house
}

void RenderManager::SetUpGeometry()
{
  std::vector<float> sphereCoords;
  std::vector<float> sphereNormals;
  GetSphereData(sphereCoords, sphereNormals);
  sphereNumPrimitives = sphereCoords.size() / 3;
  GLuint sphere_points_vbo, sphere_normals_vbo, sphere_indices_vbo;
  SetUpVBOs(sphereCoords, sphereNormals, 
            sphere_points_vbo, sphere_normals_vbo, sphere_indices_vbo);
    
  std::vector<float> cylCoords;
  std::vector<float> cylNormals;
  GetCylinderData(cylCoords, cylNormals);
  cylinderNumPrimitives = cylCoords.size() / 3;
  GLuint cyl_points_vbo, cyl_normals_vbo, cyl_indices_vbo;
  SetUpVBOs(cylCoords, cylNormals, 
            cyl_points_vbo, cyl_normals_vbo, cyl_indices_vbo);
    
//    houseNumPrimitives = 12;
    GLuint house_points_vbo, house_normals_vbo, house_indices_vbo;
    SetUpHouseVBOs(house_points_vbo, house_normals_vbo, house_indices_vbo, houseNumPrimitives);

  GLuint vao[3];
  glGenVertexArrays(3, vao);

  glBindVertexArray(vao[SPHERE]);
  sphereVAO = vao[SPHERE];
  glBindBuffer(GL_ARRAY_BUFFER, sphere_points_vbo);
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, NULL);
  glBindBuffer(GL_ARRAY_BUFFER, sphere_normals_vbo);
  glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 0, NULL);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, sphere_indices_vbo);
  glEnableVertexAttribArray(0);
  glEnableVertexAttribArray(1);

  glBindVertexArray(vao[CYLINDER]);
  cylinderVAO = vao[CYLINDER];
  glBindBuffer(GL_ARRAY_BUFFER, cyl_points_vbo);
  glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, NULL);
  glBindBuffer(GL_ARRAY_BUFFER, cyl_normals_vbo);
  glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 0, NULL);
  glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, cyl_indices_vbo);
  glEnableVertexAttribArray(0);
  glEnableVertexAttribArray(1);
    
    glBindVertexArray(vao[HOUSE]);
    houseVAO = vao[HOUSE];
    glBindBuffer(GL_ARRAY_BUFFER, house_points_vbo);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 0, NULL);
    glBindBuffer(GL_ARRAY_BUFFER, house_normals_vbo);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 0, NULL);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, house_indices_vbo);
    glEnableVertexAttribArray(0);
    glEnableVertexAttribArray(1);
    
}


//
// PART3: main function
//
int main() 
{
  RenderManager rm;
  GLFWwindow *window = rm.GetWindow();

  glm::vec3 origin(0, 0, 0);
  glm::vec3 up(0, 1, 0);

  int counter=0;
  while (!glfwWindowShouldClose(window)) 
  {
      // CameraCheckPoint
    double angle=counter/300.0*2*M_PI;
//      double angle = 0.1*M_PI;
    counter++;

      
      // Change number below of Camera(x*sin(angle), y, z*cos(angle)) accordingly:
      // change x greater -> camera move more to the right
      // change z greater -> camera move further away -> can see more, z less -> move closer away, see less but more realistic.
    glm::vec3 camera(20*sin(angle), 0, 20*cos(angle));
//    glm::vec3 camera(20, 0, 30);
    rm.SetView(camera, origin, up);

    // wipe the drawing surface clear
    glClearColor(0.3, 0.3, 0.8, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
      
      // Create house
      SetUpHouseFinally(rm);

    SetUpDog(counter, rm);

    // update other events like input handling
    glfwPollEvents();
    // put the stuff we've been drawing onto the display
    glfwSwapBuffers(window);
  }

  // close GL context and any other GLFW resources
  glfwTerminate();
  return 0;
}

glm::mat4 RotateMatrix(float degrees, float x, float y, float z)
{
   glm::mat4 identity(1.0f);
   glm::mat4 rotation = glm::rotate(identity, 
                                    glm::radians(degrees), 
                                    glm::vec3(x, y, z));
   return rotation;
}

glm::mat4 ScaleMatrix(double x, double y, double z)
{
   glm::mat4 identity(1.0f);
   glm::vec3 scale(x, y, z);
   return glm::scale(identity, scale);
}

glm::mat4 TranslateMatrix(double x, double y, double z)
{
   glm::mat4 identity(1.0f);
   glm::vec3 translate(x, y, z);
   return glm::translate(identity, translate);
}

// Reflection Matrix accross Z from behind
glm::mat4 ReflectionBehind() {
    glm::mat4 translateZ = TranslateMatrix(0, 0, -10);    // Change Z number here
    glm::mat4 reflectZ = glm::mat4(1.0, 0.0, 0.0, 0.0,
                               0.0, 1.0, 0.0, 0.0,
                               0.0, 0.0, -1.0, 0.0,
                               0.0, 0.0, 0.0, 1.0);
    glm::mat4 translateZBack = TranslateMatrix(0, 0, 10);   // Change Z number accordingly
    glm::mat4 result = translateZ * reflectZ * translateZBack;
    
    return result;
}

// Reflection Matrix accross Z from Front
glm::mat4 ReflectionFront() {
    glm::mat4 translateZ = TranslateMatrix(0, 0, 2.5);    // Change Z number here
    glm::mat4 reflectZ = glm::mat4(1.0, 0.0, 0.0, 0.0,
                               0.0, 1.0, 0.0, 0.0,
                               0.0, 0.0, -1.0, 0.0,
                               0.0, 0.0, 0.0, 1.0);
    glm::mat4 translateZBack = TranslateMatrix(0, 0, -2.5);   // Change Z number accordingly
    glm::mat4 result = translateZ * reflectZ * translateZBack;
    
    return result;
}

// Reflection Matrix accross X from Left
glm::mat4 ReflectionLeft() {
    glm::mat4 translateZ = TranslateMatrix(-1.0, 0, 0);    // Change X number here
    glm::mat4 reflectZ = glm::mat4(-1.0, 0.0, 0.0, 0.0,
                               0.0, 1.0, 0.0, 0.0,
                               0.0, 0.0, 1.0, 0.0,
                               0.0, 0.0, 0.0, 1.0);
    glm::mat4 translateZBack = TranslateMatrix(1.0, 0, 0);   // Change X number accordingly
    glm::mat4 result = translateZ * reflectZ * translateZBack;
    
    return result;
}

// Reflection Matrix accross X from Right
glm::mat4 ReflectionRight() {
    glm::mat4 translateZ = TranslateMatrix(7, 0, 0);    // Change X number here
    glm::mat4 reflectZ = glm::mat4(-1.0, 0.0, 0.0, 0.0,
                               0.0, 1.0, 0.0, 0.0,
                               0.0, 0.0, 1.0, 0.0,
                               0.0, 0.0, 0.0, 1.0);
    glm::mat4 translateZBack = TranslateMatrix(-7, 0, 0);   // Change X number accordingly
    glm::mat4 result = translateZ * reflectZ * translateZBack;
    
    return result;
}

void SetUpHouseFinally(RenderManager &rm) {
    glm::mat4 identity(1.0f);
    rm.SetColor(1,0,0);
    rm.Render(RenderManager::HOUSE, identity);
}

//void SetUpEyeball(glm::mat4 modelSoFar, RenderManager &rm)
//{
//   glm::mat4 scaled10 = ScaleMatrix(0.1, 0.1, 0.1);
//   rm.SetColor(1,1,1);
//   rm.Render(RenderManager::SPHERE, modelSoFar*scaled10);
//
//   glm::mat4 translate = TranslateMatrix(0, 0, 0.95);
//   glm::mat4 scaled30 = ScaleMatrix(0.3, 0.3, 0.3);
//   rm.SetColor(0,0,0);
//   rm.Render(RenderManager::SPHERE, modelSoFar*scaled10*translate*scaled30);
//}

//void SetUpHead(glm::mat4 modelSoFar, RenderManager &rm)
//{
//   // place center of head at X=3, Y=1, Z=0
//   glm::mat4 translate = TranslateMatrix(3, 1, 0);
//
//   glm::mat4 leftEyeTranslate = TranslateMatrix(-0.2, 0.25, 0);
//   glm::mat4 rotateInFromLeft = RotateMatrix(15, 0, 1, 0);
//   SetUpEyeball(modelSoFar*translate*leftEyeTranslate*rotateInFromLeft, rm);
//
//   glm::mat4 rightEyeTranslate = TranslateMatrix(0.2, 0.25, 0);
//   glm::mat4 rotateInFromRight = RotateMatrix(-15, 0, 1, 0);
//   SetUpEyeball(modelSoFar*translate*rightEyeTranslate*rotateInFromRight, rm);
//}

void SetUpDogReflection(RenderManager &rm, const vector<glm::mat4> &originalDog, const vector<bool> &isSphereType, const vector<double> &originalColors, glm::mat4 reflectionMatrix) {
    for (int i = 0; i < originalDog.size(); i++) {
        double R = originalColors[i*3];
        double G = originalColors[i*3+1];
        double B = originalColors[i*3+2];
        
        rm.SetColor(R,G,B);
        if (isSphereType[i] == true) {
            rm.Render(RenderManager::SPHERE, reflectionMatrix * originalDog[i]);
        }
        else {
            rm.Render(RenderManager::CYLINDER, reflectionMatrix * originalDog[i]);
        }
    }
}

void SetUpDog(int counter, RenderManager &rm)
{
    glm::mat4 identity(1.0f);

    double var=(counter%100)/99.0;
    if ((counter/100 % 2) == 1)
       var=1-var;

//    SetUpHead(identity, rm);
    
    vector<glm::mat4> originalDog;
    vector<bool> isSphereType;   // true is sphere, false is cylinder
    vector<double> originalColors;
    
/*** THIS CODE JUST MAKES THREE SPHERES AND VARIES THEIR
 *** COLOR BASED ON THE COUNTER
 *
 *
    */
    
    // Tien - Setting up variable for eyes
    glm::mat4 translate = TranslateMatrix(3, 1, 0);
    glm::mat4 scaled10 = ScaleMatrix(0.1, 0.1, 0.1);
    glm::mat4 scaled30 = ScaleMatrix(0.3, 0.3, 0.3);
    glm::mat4 translateEye = TranslateMatrix(0, 0, 0.95);
    
    // Setting up left eye
    glm::mat4 leftEyeTranslate = TranslateMatrix(-0.2, 0.25, 0);
    glm::mat4 rotateInFromLeft = RotateMatrix(15, 0, 1, 0);
    glm::mat4 leftEyeModelSoFar = identity*translate*leftEyeTranslate*rotateInFromLeft;
    
    // Left eyeBall
    glm::mat4 leftEyeBallTransform = leftEyeModelSoFar*scaled10;
    rm.SetColor(1,1,1);
    rm.Render(RenderManager::SPHERE, leftEyeBallTransform);
    originalDog.push_back(leftEyeBallTransform);
    isSphereType.push_back(true);
    originalColors.push_back(1); originalColors.push_back(1); originalColors.push_back(1);

    // Left eye
    glm::mat4 leftEyeTransform = leftEyeModelSoFar*scaled10*translateEye*scaled30;
    rm.SetColor(0,0,0);
    rm.Render(RenderManager::SPHERE, leftEyeTransform);
    originalDog.push_back(leftEyeTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0); originalColors.push_back(0); originalColors.push_back(0);

    
    // Setting up right eye
    glm::mat4 rightEyeTranslate = TranslateMatrix(0.2, 0.25, 0);
    glm::mat4 rotateInFromRight = RotateMatrix(-15, 0, 1, 0);
    glm::mat4 rightEyeModelSoFar = identity*translate*rightEyeTranslate*rotateInFromRight;
    
    // Right eyeBall
    glm::mat4 rightEyeBallTransform = rightEyeModelSoFar*scaled10;
    rm.SetColor(1,1,1);
    rm.Render(RenderManager::SPHERE, rightEyeBallTransform);
    originalDog.push_back(rightEyeBallTransform);
    isSphereType.push_back(true);
    originalColors.push_back(1); originalColors.push_back(1); originalColors.push_back(1);

    // Right eye
    glm::mat4 rightEyeTransform = rightEyeModelSoFar*scaled10*translateEye*scaled30;
    rm.SetColor(0,0,0);
    rm.Render(RenderManager::SPHERE, rightEyeTransform);
    originalDog.push_back(rightEyeTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0); originalColors.push_back(0); originalColors.push_back(0);
    
    
    
    // Head
    glm::mat4 M1T = TranslateMatrix(3, 1, -1);
    glm::mat4 headTransform = M1T;
    rm.SetColor(0.6, 0.4, 0.0);
    rm.Render(RenderManager::SPHERE, headTransform);
    originalDog.push_back(headTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.6); originalColors.push_back(0.4); originalColors.push_back(0.0);
    
    
    // Tien - Set Up Lower Mouth
    glm::mat4 M16T = TranslateMatrix(3, 0.485, -0.5);
    glm::mat4 M16S = ScaleMatrix(0.475, 0.09, 0.75);
    glm::mat4 lowerMouthTransform = M16T * M16S;
    rm.SetColor(1.0, 0.92, 0.8);
    rm.Render(RenderManager::SPHERE, lowerMouthTransform);
    originalDog.push_back(lowerMouthTransform);
    isSphereType.push_back(true);
    originalColors.push_back(1.0); originalColors.push_back(0.92); originalColors.push_back(0.8);
    
    // Tien - Set Up Tounge
    glm::mat4 M17T = TranslateMatrix(3, 0.55, -0.5);
    glm::mat4 MRotate17 = RotateMatrix(-10 + 20*var, 0, 1, 0);    // Animating
    glm::mat4 M17S = ScaleMatrix(0.25, 0.115, 0.75);
    glm::mat4 toungeTransform = M17T * MRotate17 * M17S;
    rm.SetColor(1.0, 0.0, 0.4);
    rm.Render(RenderManager::SPHERE, toungeTransform);
    originalDog.push_back(toungeTransform);
    isSphereType.push_back(true);
    originalColors.push_back(1.0); originalColors.push_back(0.0); originalColors.push_back(0.4);
    
    // Tien - Set Up Nose
    glm::mat4 M18T = TranslateMatrix(3, 0.7, 0.1);
    glm::mat4 M18S = ScaleMatrix(0.1, 0.1, 0.1);
    glm::mat4 noseTransform = M18T * M18S;
    rm.SetColor(0.2, 0.133, 0.0);
    rm.Render(RenderManager::SPHERE, noseTransform);
    originalDog.push_back(noseTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.2); originalColors.push_back(0.133); originalColors.push_back(0.0);
    
    
    // Tien - Set Up Left Ear
    glm::mat4 M2T = TranslateMatrix(2, 0.75, -1);
    glm::mat4 M2R = RotateMatrix(90, 0, 0, 1);
    glm::mat4 MRotate2 = RotateMatrix(-30 + 60 * var, 0, 1, 0); // Animating
    glm::mat4 M2S = ScaleMatrix(1.05, 0.15, 0.75);
    glm::mat4 leftEarTransform = M2T * M2R * MRotate2 * M2S;
    rm.SetColor(0.47, 0.33, 0.0);
    rm.Render(RenderManager::SPHERE, leftEarTransform);
    originalDog.push_back(leftEarTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.47); originalColors.push_back(0.33); originalColors.push_back(0.0);
    
    // Tien - Set Up Right Ear
    glm::mat4 M3T = TranslateMatrix(4, 0.75, -1);
    glm::mat4 M3R = RotateMatrix(90, 0, 0, 1);
    glm::mat4 MRotate3 = RotateMatrix(-30 + 60 * var, 0, 1, 0); // Animating
    glm::mat4 M3S = ScaleMatrix(1.05, 0.15, 0.75);
    glm::mat4 rightEarTransform = M3T * M3R * MRotate3 * M3S;
    rm.SetColor(0.47, 0.33, 0.0);
    rm.Render(RenderManager::SPHERE, rightEarTransform);
    originalDog.push_back(rightEarTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.47); originalColors.push_back(0.33); originalColors.push_back(0.0);
    
    // Tien - Set Up Body
    glm::mat4 M4T = TranslateMatrix(3, -0.75, -4);
    glm::mat4 M4S = ScaleMatrix(1, 1, 3);
    glm::mat4 bodyTransform = M4T * M4S;
    rm.SetColor(0.6, 0.4, 0.0);
    rm.Render(RenderManager::SPHERE, bodyTransform);
    originalDog.push_back(bodyTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.6); originalColors.push_back(0.4); originalColors.push_back(0.0);
    
    // Tien - Set Up Neck
    glm::mat4 M5T = TranslateMatrix(3, -0.45, -2);
    glm::mat4 M5R = RotateMatrix(-45, 1, 0, 0);
    glm::mat4 M5S = ScaleMatrix(0.4, 0.4, 1);
    glm::mat4 neckTransform = M5T * M5R * M5S;
    rm.SetColor(0.6, 0.4, 0.0);
    rm.Render(RenderManager::CYLINDER, neckTransform);
    originalDog.push_back(neckTransform);
    isSphereType.push_back(false);
    originalColors.push_back(0.6); originalColors.push_back(0.4); originalColors.push_back(0.0);
    
    // Tien - Set Up Tail
    glm::mat4 M14T = TranslateMatrix(3, 1, -7.75);
    glm::mat4 M14R = RotateMatrix(45, 1, 0, 0);
    glm::mat4 M14S = ScaleMatrix(0.15, 0.15, 2);
    glm::mat4 tailTransform = M14T * M14R * M14S;
    rm.SetColor(0.47, 0.33, 0.0);
    rm.Render(RenderManager::CYLINDER, tailTransform);
    originalDog.push_back(tailTransform);
    isSphereType.push_back(false);
    originalColors.push_back(0.47); originalColors.push_back(0.33); originalColors.push_back(0.0);
    
    
    // Tien - Set up Front Left Leg
    glm::mat4 M6T = TranslateMatrix(2.45, -1, -2);
    glm::mat4 M6R = RotateMatrix(90, 1, 0, 0);
    glm::mat4 M6S = ScaleMatrix(0.2, 0.2, 1.15);
    glm::mat4 frontLeftLegTransform = M6T * M6R * M6S;
    rm.SetColor(0.47, 0.33, 0.0);
    rm.Render(RenderManager::CYLINDER, frontLeftLegTransform);
    originalDog.push_back(frontLeftLegTransform);
    isSphereType.push_back(false);
    originalColors.push_back(0.47); originalColors.push_back(0.33); originalColors.push_back(0.0);
    
    // Tien - Set up Front Right Leg
    glm::mat4 M7T = TranslateMatrix(3.55, -1, -2);
    glm::mat4 M7R = RotateMatrix(90, 1, 0, 0);
    glm::mat4 M7S = ScaleMatrix(0.2, 0.2, 1.15);
    glm::mat4 frontRightLegTransform = M7T * M7R * M7S;
    rm.SetColor(0.47, 0.33, 0.0);
    rm.Render(RenderManager::CYLINDER, frontRightLegTransform);
    originalDog.push_back(frontRightLegTransform);
    isSphereType.push_back(false);
    originalColors.push_back(0.47); originalColors.push_back(0.33); originalColors.push_back(0.0);
    
    // Tien - Set up Back Left Leg
    glm::mat4 M8T = TranslateMatrix(2.45, -1, -6);
    glm::mat4 M8R = RotateMatrix(90, 1, 0, 0);
    glm::mat4 M8S = ScaleMatrix(0.2, 0.2, 1.15);
    glm::mat4 backLeftLegTransform = M8T * M8R * M8S;
    rm.SetColor(0.47, 0.33, 0.0);
    rm.Render(RenderManager::CYLINDER, backLeftLegTransform);
    originalDog.push_back(backLeftLegTransform);
    isSphereType.push_back(false);
    originalColors.push_back(0.47); originalColors.push_back(0.33); originalColors.push_back(0.0);
    
    // Tien - Set up Back Right Leg
    glm::mat4 M9T = TranslateMatrix(3.55, -1, -6);
    glm::mat4 M9R = RotateMatrix(90, 1, 0, 0);
    glm::mat4 M9S = ScaleMatrix(0.2, 0.2, 1.15);
    glm::mat4 backRightLegTransform = M9T * M9R * M9S;
    rm.SetColor(0.47, 0.33, 0.0);
    rm.Render(RenderManager::CYLINDER, backRightLegTransform);
    originalDog.push_back(backRightLegTransform);
    isSphereType.push_back(false);
    originalColors.push_back(0.47); originalColors.push_back(0.33); originalColors.push_back(0.0);
    
    
    
    // Tien - Set up Front Left Foot
    glm::mat4 M10T = TranslateMatrix(2.45, -2.205, -1.86);
    glm::mat4 M10S = ScaleMatrix(0.2, 0.075, 0.45);
    glm::mat4 frontLeftFootTransform = M10T * M10S;
    rm.SetColor(0.2, 0.133, 0.0);
    rm.Render(RenderManager::SPHERE, frontLeftFootTransform);
    originalDog.push_back(frontLeftFootTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.2); originalColors.push_back(0.133); originalColors.push_back(0.0);
    
    // Tien - Set up Front Right Foot
    glm::mat4 M11T = TranslateMatrix(3.55, -2.205, -1.86);
    glm::mat4 M11S = ScaleMatrix(0.2, 0.075, 0.45);
    glm::mat4 frontRightFootTransform = M11T * M11S;
    rm.SetColor(0.2, 0.133, 0.0);
    rm.Render(RenderManager::SPHERE, frontRightFootTransform);
    originalDog.push_back(frontRightFootTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.2); originalColors.push_back(0.133); originalColors.push_back(0.0);
    
    // Tien - Set up Back Left Foot
    glm::mat4 M12T = TranslateMatrix(2.45, -2.205, -5.86);
    glm::mat4 M12S = ScaleMatrix(0.2, 0.075, 0.45);
    glm::mat4 backLeftFootTransform = M12T * M12S;
    rm.SetColor(0.2, 0.133, 0.0);
    rm.Render(RenderManager::SPHERE, backLeftFootTransform);
    originalDog.push_back(backLeftFootTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.2); originalColors.push_back(0.133); originalColors.push_back(0.0);
    
    // Tien - Set up Back Right Foot
    glm::mat4 M13T = TranslateMatrix(3.55, -2.205, -5.86);
    glm::mat4 M13S = ScaleMatrix(0.2, 0.075, 0.45);
    glm::mat4 backRightFootTransform = M13T * M13S;
    rm.SetColor(0.2, 0.133, 0.0);
    rm.Render(RenderManager::SPHERE, backRightFootTransform);
    originalDog.push_back(backRightFootTransform);
    isSphereType.push_back(true);
    originalColors.push_back(0.2); originalColors.push_back(0.133); originalColors.push_back(0.0);
    
    // Uncomment/Comment each of this to render/unrender more reflections of the original dog
    SetUpDogReflection(rm, originalDog, isSphereType, originalColors, ReflectionBehind());
    SetUpDogReflection(rm, originalDog, isSphereType, originalColors, ReflectionFront());
    SetUpDogReflection(rm, originalDog, isSphereType, originalColors, ReflectionLeft());
    SetUpDogReflection(rm, originalDog, isSphereType, originalColors, ReflectionRight());
}
    
const char *GetVertexShader()
{
   static char vertexShader[2048];
   strcpy(vertexShader,
           "#version 400\n"
           "layout (location = 0) in vec3 vertex_position;\n"
          "layout (location = 1) in vec3 vertex_normal;\n"
          "uniform vec3 cameraloc;  // Camera position \n"
          "uniform vec3 lightdir;   // Lighting direction \n"
          "uniform vec4 lightcoeff; // Lighting coeff: Ka, Kd, Ks, alpha\n"
          "out float shading_amount;\n"
          
           "uniform mat4 MVP;\n"
          "uniform mat4 MVT;\n"
          
           "void main() {\n"
          "  vec4 position = vec4(vertex_position, 1.0);\n"
          " vec4 vertex_normal_transform = MVT*vec4(vertex_normal, 1.0);\n"
           "  gl_Position = MVP*vec4(vertex_position, 1.0);\n"
          
          "vec3 viewDir = vec3(cameraloc[0] - vertex_position[0], cameraloc[1] - vertex_position[1], cameraloc[2] - vertex_position[2]);\n"
          "vec3 L = vec3(lightdir[0], lightdir[1], lightdir[2]);\n"
      //    "vec3 V = vec3(cameraloc[0], cameraloc[1], cameraloc[2]);\n"
          "vec3 N = vec3(vertex_normal_transform[0], vertex_normal_transform[1], vertex_normal_transform[2]);\n"

          "viewDir = normalize(viewDir);\n"
          "L = normalize(L);\n"
      //    "normalize(V);\n"
          "N = normalize(N);\n"
          
          "float LdotN = dot(L, N);\n"
          "LdotN = max(LdotN, 0.0);\n"
          "float diffuse = lightcoeff[1] * LdotN;\n"
          //"diffuse = clamp(diffuse, 0.0, 1.0);\n"
          "diffuse = max(diffuse, 0.0);\n"

          "float r0 = 2 * LdotN * N[0] - L[0];\n"
          "float r1 = 2 * LdotN * N[1] - L[1];\n"
          "float r2 = 2 * LdotN * N[2] - L[2];\n"
          "vec3 R = vec3(r0, r1, r2);\n"
          
          "R = normalize(R);\n"

          "float RdotV = dot(R, viewDir);\n"
          "RdotV = max(RdotV, 0.0);\n"
          "float specular = lightcoeff[2] * pow(RdotV, lightcoeff[3]);\n"
          //"specular = clamp(specular, 0.0, 1.0);\n"
          "specular = max(specular, 0.0);\n"

          "float totalShading = lightcoeff[0] + diffuse + specular;\n"

          "shading_amount = totalShading;\n"
          
           "}\n"
         );
   return vertexShader;
}


const char *GetFragmentShader()
{
   static char fragmentShader[2048];
   strcpy(fragmentShader, 
           "#version 400\n"
           "uniform vec3 color;\n"
          "in float shading_amount;\n"
           "out vec4 frag_color;\n"
           "void main() {\n"
           "  frag_color = vec4(color, 1.0);\n"
          
          "frag_color = shading_amount*frag_color;\n"
          "frag_color[3] = 1.0;\n"
          
           "}\n"
         );
   return fragmentShader;
}

