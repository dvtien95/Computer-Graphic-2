// Access my movie at: https://youtu.be/qkQadcel-Jk

/* Tien Dinh -- CIS 541: Computer Graphic -- Project1F.cxx -- Phong Shading/movie */

#include <iostream>
#include <string>
#include <algorithm>
#include <cmath>
#include <math.h>
#include <vtkDataSet.h>
#include <vtkImageData.h>
#include <vtkPNGWriter.h>
#include <vtkPointData.h>
#include <vtkPolyData.h>
#include <vtkPolyDataReader.h>
#include <vtkPoints.h>
#include <vtkUnsignedCharArray.h>
#include <vtkFloatArray.h>
#include <vtkCellArray.h>
#include <vtkDoubleArray.h>

#define NORMALS

using namespace std;

double ceil__441(double f)
{
    return ceil(f-0.00001);
}

double floor__441(double f)
{
    return floor(f+0.00001);
}


vtkImageData * NewImage(int height, int width)
{
    vtkImageData *img = vtkImageData::New();
    img->SetDimensions(width, height, 1);
    img->AllocateScalars(VTK_UNSIGNED_CHAR, 3);

    return img;
}

void WriteImage(vtkImageData *img, const string filename)
{
   string full_filename = filename;
   full_filename += ".png";
   vtkPNGWriter *writer = vtkPNGWriter::New();
   writer->SetInputData(img);
   writer->SetFileName(full_filename.c_str());
   writer->Write();
   writer->Delete();
}

class Triangle
{
    public:
        double      X[3];
        double      Y[3];
        double      Z[3];
        double      colors[3][3];
        double      normals[3][3];  // Normals index by vertex first, then dimension
        double      shading[3];     // helper member to store per-vertex shading info
  // would some methods for the triangle be helpful? Insert Huh meme
};

class Matrix
{
  public:
    double A[4][4]; // A [i] [j] means row i, column j

    void TransformPoint (const double * ptIn, double * ptOut);
    static Matrix ComposeMatrices (const Matrix &, const Matrix &);
    void Print (ostream & o);
    void printMatrix(const Matrix &);
};

void printMatrix(const Matrix & M) {
    cout << "My matrix is: " << endl;
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            cout << M.A[i][j] << ' ';
        }
        cout << endl;
    }
}

void Matrix :: Print (ostream & o)
{
    for (int i = 0; i <4; i ++)
    {
        char str [256];
        sprintf (str, "(% .7f% .7f% .7f% .7f) \n", A [i] [0], A [i] [1], A [i] [2], A [i ] [3]);
        o << str;
    }
}

Matrix Matrix::ComposeMatrices(const Matrix & M1, const Matrix & M2)
{
    Matrix rv;
    for (int i = 0; i <4; i ++)
        for (int j = 0; j <4; j ++)
        {
            rv.A[i][j] = 0;
            for (int k = 0; k < 4; k ++) {
                rv.A[i][j] += M1.A[i][k] * M2.A[k][j];
            }
        }

    return rv;
}

void Matrix::TransformPoint (const double * ptIn, double * ptOut)
{
    ptOut [0] = ptIn [0] * A [0] [0]
             + ptIn [1] * A [1] [0]
             + ptIn [2] * A [2] [0]
             + ptIn [3] * A [3] [0];
    ptOut [1] = ptIn [0] * A [0] [1]
             + ptIn [1] * A [1] [1]
             + ptIn [2] * A [2] [1]
             + ptIn [3] * A [3] [1];
    ptOut [2] = ptIn [0] * A [0] [2]
             + ptIn [1] * A [1] [2]
             + ptIn [2] * A [2] [2]
             + ptIn [3] * A [3] [2];
    ptOut [3] = ptIn [0] * A [0] [3]
             + ptIn [1] * A [1] [3]
             + ptIn [2] * A [2] [3]
             + ptIn [3] * A [3] [3];
}

class Camera
{
  public:
    double          near, far;
    double          angle;
    double          position[3];
    double          focus[3];
    double          up[3];

    Matrix          ViewTransform();
    Matrix          CameraTransform();
    Matrix          DeviceTransform();
};


double SineParameterize(int curFrame, int nFrames, int ramp)
{
    int nNonRamp = nFrames-2*ramp;
    double height = 1./(nNonRamp + 4*ramp/M_PI);
    if (curFrame < ramp)
    {
        double factor = 2*height*ramp/M_PI;
        double eval = cos(M_PI/2*((double)curFrame)/ramp);
        return (1.-eval)*factor;
    }
    else if (curFrame > nFrames-ramp)
    {
        int amount_left = nFrames-curFrame;
        double factor = 2*height*ramp/M_PI;
        double eval =cos(M_PI/2*((double)amount_left/ramp));
        return 1. - (1-eval)*factor;
    }
    double amount_in_quad = ((double)curFrame-ramp);
    double quad_part = amount_in_quad*height;
    double curve_part = height*(2*ramp)/M_PI;
    return quad_part+curve_part;
}

Camera GetCamera(int frame, int nframes)
{
    double t = SineParameterize(frame, nframes, nframes/10);
    Camera c;
    c.near = 5;
    c.far = 200;
    c.angle = M_PI/6;
    c.position[0] = 40*sin(2*M_PI*t);
    c.position[1] = 40*cos(2*M_PI*t);
    c.position[2] = 40;
    c.focus[0] = 0;
    c.focus[1] = 0;
    c.focus[2] = 0;
    c.up[0] = 0;
    c.up[1] = 1;
    c.up[2] = 0;
    return c;
}

// Struct lightning parameters, for project 1F
struct LightingParameters
{
    LightingParameters(void)
    {
         lightDir[0] = -0.6;
         lightDir[1] = 0;
         lightDir[2] = -0.8;
         Ka = 0.3;
         Kd = 0.7;
         Ks = 2.8;
         alpha = 50.5;
    };
  

    double lightDir[3]; // The direction of the light source
    double Ka;          // The coefficient for ambient lighting
    double Kd;          // The coefficient for diffuse lighting
    double Ks;          // The coefficient for specular lighting
    double alpha;       // The exponent term for specular lighting
};

LightingParameters lp;

LightingParameters GetLighting(Camera c)
{
    LightingParameters lp;
    lp.lightDir[0] = c.position[0]-c.focus[0];
    lp.lightDir[1] = c.position[1]-c.focus[1];
    lp.lightDir[2] = c.position[2]-c.focus[2];
    double mag = sqrt(lp.lightDir[0]*lp.lightDir[0]
                    + lp.lightDir[1]*lp.lightDir[1]
                    + lp.lightDir[2]*lp.lightDir[2]);
    if (mag > 0)
    {
        lp.lightDir[0] /= mag;
        lp.lightDir[1] /= mag;
        lp.lightDir[2] /= mag;
    }

    return lp;
}


// What is this? is this needed?
class Screen
{
  public:
      unsigned char   *buffer;
      int width, height;
  // would some methods for accessing and setting pixels be helpful? Insert Huh meme
};

// Get triangle method for 1E
vector<Triangle> GetTriangles(void)
{
    vtkPolyDataReader *rdr = vtkPolyDataReader::New();
    rdr->SetFileName("proj1f_geometry.vtk");
    cerr << "Reading" << endl;
    rdr->Update();
    cerr << "Done reading" << endl;
    if (rdr->GetOutput()->GetNumberOfCells() == 0)
    {
        cerr << "Unable to open file!!" << endl;
        exit(EXIT_FAILURE);
    }
    vtkPolyData *pd = rdr->GetOutput();

    int numTris = pd->GetNumberOfCells();
    vtkPoints *pts = pd->GetPoints();
    vtkCellArray *cells = pd->GetPolys();
    vtkDoubleArray *var = (vtkDoubleArray *) pd->GetPointData()->GetArray("hardyglobal");
    double *color_ptr = var->GetPointer(0);
    //vtkFloatArray *var = (vtkFloatArray *) pd->GetPointData()->GetArray("hardyglobal");
    //float *color_ptr = var->GetPointer(0);
    vtkFloatArray *n = (vtkFloatArray *) pd->GetPointData()->GetNormals();
    float *normals = n->GetPointer(0);
    std::vector<Triangle> tris(numTris);
    vtkIdType npts;
    vtkIdType *ptIds;
    int idx;
    for (idx = 0, cells->InitTraversal() ; cells->GetNextCell(npts, ptIds) ; idx++)
    {
        if (npts != 3)
        {
            cerr << "Non-triangles!! ???" << endl;
            exit(EXIT_FAILURE);
        }
        double *pt = NULL;
        pt = pts->GetPoint(ptIds[0]);
        tris[idx].X[0] = pt[0];
        tris[idx].Y[0] = pt[1];
        tris[idx].Z[0] = pt[2];
#ifdef NORMALS
        tris[idx].normals[0][0] = normals[3*ptIds[0]+0];
        tris[idx].normals[0][1] = normals[3*ptIds[0]+1];
        tris[idx].normals[0][2] = normals[3*ptIds[0]+2];
#endif
        pt = pts->GetPoint(ptIds[1]);
        tris[idx].X[1] = pt[0];
        tris[idx].Y[1] = pt[1];
        tris[idx].Z[1] = pt[2];
#ifdef NORMALS
        tris[idx].normals[1][0] = normals[3*ptIds[1]+0];
        tris[idx].normals[1][1] = normals[3*ptIds[1]+1];
        tris[idx].normals[1][2] = normals[3*ptIds[1]+2];
#endif
        pt = pts->GetPoint(ptIds[2]);
        tris[idx].X[2] = pt[0];
        tris[idx].Y[2] = pt[1];
        tris[idx].Z[2] = pt[2];
#ifdef NORMALS
        tris[idx].normals[2][0] = normals[3*ptIds[2]+0];
        tris[idx].normals[2][1] = normals[3*ptIds[2]+1];
        tris[idx].normals[2][2] = normals[3*ptIds[2]+2];
#endif

        // 1->2 interpolate between light blue, dark blue
        // 2->2.5 interpolate between dark blue, cyan
        // 2.5->3 interpolate between cyan, green
        // 3->3.5 interpolate between green, yellow
        // 3.5->4 interpolate between yellow, orange
        // 4->5 interpolate between orange, brick
        // 5->6 interpolate between brick, salmon
        double mins[7] = { 1, 2, 2.5, 3, 3.5, 4, 5 };
        double maxs[7] = { 2, 2.5, 3, 3.5, 4, 5, 6 };
        unsigned char RGB[8][3] = { { 71, 71, 219 },
                                    { 0, 0, 91 },
                                    { 0, 255, 255 },
                                    { 0, 128, 0 },
                                    { 255, 255, 0 },
                                    { 255, 96, 0 },
                                    { 107, 0, 0 },
                                    { 224, 76, 76 }
                                  };
        for (int j = 0 ; j < 3 ; j++)
        {
            float val = color_ptr[ptIds[j]];
            int r;
            for (r = 0 ; r < 7 ; r++)
            {
                if (mins[r] <= val && val < maxs[r])
                    break;
            }
            if (r == 7)
            {
                cerr << "Could not interpolate color for " << val << endl;
                exit(EXIT_FAILURE);
            }
            double proportion = (val-mins[r]) / (maxs[r]-mins[r]);
            tris[idx].colors[j][0] = (RGB[r][0]+proportion*(RGB[r+1][0]-RGB[r][0]))/255.0;
            tris[idx].colors[j][1] = (RGB[r][1]+proportion*(RGB[r+1][1]-RGB[r][1]))/255.0;
            tris[idx].colors[j][2] = (RGB[r][2]+proportion*(RGB[r+1][2]-RGB[r][2]))/255.0;
        }
    }

    return tris;
}


bool sortByXThenY(const vector<double> & a, const vector<double> & b) {
    if (a[0] == b[0])
        return (a[1] < b[1]);
    else
        return a[0] < b[0];
}

// Given coordination of X, A, B and field value f(A), f(B), find f(X)
// Lerp
double interpolationFunction(const double&X,const double&A,const double&B,const double&fA,const double&fB) {
    double t = (X-A) / (B-A);
    return double(fA + t * (fB - fA) );
}

//void ScanLineAlgorithm1B(int x1, int y1, int x2, int y2, int x3, int y3, int R, int G, int B, unsigned char * & buffer, int screenWidth ) {
//    // Sort x1,y1,x2,y2,x3,y3 in a correct order (bottomleft, topleft, right):
//    vector<pair<int,int > > vect;
//    vect.push_back(make_pair(x1,y1));
//    vect.push_back(make_pair(x2,y2));
//    vect.push_back(make_pair(x3,y3));
//
//    // By sorting like this, points will always be like: (bottomleft, topleft, right)
//    // Example: (0,0), (0,99), (10, -30)  instead of randomly placed
//    sort(vect.begin(), vect.end(), sortByFirstThenSecond);
//
//    x1 = vect[0].first; y1 = vect[0].second;
//    x2 = vect[1].first; y2 = vect[1].second;
//    x3 = vect[2].first; y3 = vect[2].second;
//
////    cout << "Point: " ;
////    cout << "(" << x1 << "," << y1 << ")";
////    cout << "(" << x2 << "," << y2 << ")";
////    cout << "(" << x3 << "," << y3 << ")";
////    cout << endl;
//
//
//    //Find columnMin, columnMax:
//    int columnMin = ceil__441(x1);
//    int columnMax = floor__441(x3);
//
//    // This here is important, if columnMin or columnMax gets out of boundary, set it back to boundary. You don't care about points outside boundary, just set the pixels inside
//    if (columnMin < 0)  columnMin = 0;
//    if (columnMax >= screenWidth)  columnMax = screenWidth - 1;
//
////    cout << "columnMin is: " << columnMin << "," << "columnMax is: " << columnMax << endl;
//
//    // Find slope:
//    double slope1 = double(y1 - y3) / double(x1 - x3);
////    cout << "slope1: " << slope1 << endl;
//    double b1 = y3 - slope1 * x3;
////    cout << "b1: " << b1 << endl;
//    double slope2 = double(y2 - y3) / double(x2 - x3);
////    cout << "slope2: " << slope1 << endl;
//    double b2 = y3 - slope2 * x3;
////    cout << "b2: " << b2 << endl;
//
//    // Find intersect of line: x = c with slope1 and slop2 to get topEnd & bottomEnd
//    for (int c = columnMin; c <= columnMax; c++) {
//        int bottomEnd = ceil__441(slope1 * c + b1);
//        int topEnd = floor__441(slope2 * c + b2);
//
//        // Same here, if bottomEnd or topEnd gets out of boundary, set it back to boundary. You don't care about points outside boundary, just set the pixels inside to color.
//        if (bottomEnd < 0)  bottomEnd = 0;
//        if (topEnd >= screenWidth)  topEnd = screenWidth - 1;
//
////        cout << "bottomEnd is: " << bottomEnd << "," << "topEnd is: " << topEnd << endl;
//
//        for (int r = bottomEnd; r <= topEnd; r++) {
//            int index = 3*(r * screenWidth + c);   // Algorithm for indexing (lecture 1)
//
//            buffer[index + 0] = R;
//            buffer[index + 1] = G;
//            buffer[index + 2] = B;
//        }
//    }
//
//}

void workingOnTriangleGoingLeft(double x1, double y1, double z1, double r1, double g1, double b1, double x2, double y2, double z2, double r2, double g2, double b2, double x3, double y3, double z3, double r3, double g3, double b3, double s1, double s2, double s3, unsigned char * & buffer, vector<vector<double> > & depthColor, int screenWidth, int triangleNum) {
    
//    cout << "Rasterizing a GoingLeftTriangle" << endl;
//    cout << "(" << x1 << ", " << y1 << ", " << z1 << "), " << "color = (" << r1*255 << ", " << g1*255 << ", " << b1*255 << ")" << endl;
//    cout << "(" << x2 << ", " << y2 << ", " << z2 << "), " << "color = (" << r2*255 << ", " << g2*255 << ", " << b2*255 << ")" << endl;
//    cout << "(" << x3 << ", " << y3 << ", " << z3 << "), " << "color = (" << r3*255 << ", " << g3*255 << ", " << b3*255 << ")" << endl;
    
    int columnMin = ceil__441(x3);
    int columnMax = floor__441(x1);
    
//    cout << "Scanlines are: " << columnMin << " to " << columnMax << endl;

    if (columnMin < 0)  columnMin = 0;
    if (columnMax >= screenWidth)  columnMax = screenWidth - 1;
    if (columnMin > columnMax)  return;


    // Find slope 32:
    double slope32 = double(y2 - y3) / double(x2 - x3);
    double b32 = y3 - slope32 * x3;
    // Find slope 31:
    double slope31 = double(y3 - y1) / double(x3 - x1);
    double b31 = y1 - slope31 * x1;

    // Find intersect of line: x = c with slope21 and slop23 to get topEnd & bottomEnd
    for (int c = columnMin; c <= columnMax; c++) {
//        cout << "Working on scanline for column " << c << endl;

        double y31Intercept = slope31 * c + b31;
        double z31 = interpolationFunction(c, x1, x3, z1, z3);  // Interpolate z(bottomEnd)
        double r31 = interpolationFunction(c, x1, x3, r1, r3);
        double g31 = interpolationFunction(c, x1, x3, g1, g3);
        double b31 = interpolationFunction(c, x1, x3, b1, b3);
        double s31 = interpolationFunction(c, x1, x3, s1, s3);
        
        double y32Intercept = slope32 * c + b32;
        double z32 = interpolationFunction(c, x2, x3, z2, z3);  // Interpolate z(topEnd)
        double r32 = interpolationFunction(c, x2, x3, r2, r3);
        double g32 = interpolationFunction(c, x2, x3, g2, g3);
        double b32 = interpolationFunction(c, x2, x3, b2, b3);
        double s32 = interpolationFunction(c, x2, x3, s2, s3);

        
        int bottomEnd = ceil__441(y31Intercept);
        int topEnd = floor__441(y32Intercept);
        
//        cout << "One end is at Y = " << y32Intercept << ", Z = " << z32 << " and color " << r32 << ", " << g32 << ", " << b32 << endl;
//        cout << "Other end  at Y = " << y31Intercept << ", Z = " << z31 << " and color " << r31 << ", " << g31 << ", " << b31 << endl;
        
    

        // Same here, if bottomEnd or topEnd gets out of boundary, set it back to boundary. You don't care about points outside boundary, just set the pixels inside to color.
        if (bottomEnd < 0)  bottomEnd = 0;
        if (topEnd >= screenWidth)  topEnd = screenWidth - 1;

        for (int r = bottomEnd; r <= topEnd; r++) {
            // Interpolate z(c,r),r,g,b from z(bottomEnd), z(topEnd)
            double zi = interpolationFunction(r, y32Intercept, y31Intercept, z32, z31);
            double ri = interpolationFunction(r, y32Intercept, y31Intercept, r32, r31);
            double gi = interpolationFunction(r, y32Intercept, y31Intercept, g32, g31);
            double bi = interpolationFunction(r, y32Intercept, y31Intercept, b32, b31);
            double si = interpolationFunction(r, y32Intercept, y31Intercept, s32, s31);

//            cout << "Scanline produced fragment at col=" << c << ", row=" << r << " with depth " << zi;
//            cout << ", and color " << ri << ", " << gi << ", " << bi << endl;
            
            if (zi > depthColor[c][r])  // If ( z(c,r) > depthBuffer(c,r) ) overwrite
            {
                int index = 3*(r * screenWidth + c);   // Algorithm for indexing (lecture 1)
                
                double rFinal = ri*si < 1 ? ri*si : 1;
                double gFinal = gi*si < 1 ? gi*si : 1;
                double bFinal = bi*si < 1 ? bi*si : 1;
                
                buffer[index + 0] = ceil__441(255*rFinal);
                buffer[index + 1] = ceil__441(255*gFinal);
                buffer[index + 2] = ceil__441(255*bFinal);
                
                depthColor[c][r] = zi;  // Update
            }
        }
    }
}

void workingOnTriangleGoingRight(double x1, double y1, double z1, double r1, double g1, double b1, double x2, double y2, double z2, double r2, double g2, double b2, double x3, double y3, double z3, double r3, double g3, double b3, double s1, double s2, double s3, unsigned char * & buffer, vector<vector<double> > & depthColor, int screenWidth, int triangleNum) {
    
//    cout << "Rasterizing a GoingRightTriangle" << endl;
//    cout << "(" << x1 << ", " << y1 << ", " << z1 << "), " << "color = (" << r1*255 << ", " << g1*255 << ", " << b1*255 << ")" << endl;
//    cout << "(" << x2 << ", " << y2 << ", " << z2 << "), " << "color = (" << r2*255 << ", " << g2*255 << ", " << b2*255 << ")" << endl;
//    cout << "(" << x3 << ", " << y3 << ", " << z3 << "), " << "color = (" << r3*255 << ", " << g3*255 << ", " << b3*255 << ")" << endl;
//    cout << endl;
    
    
    int columnMin = ceil__441(x1);
    int columnMax = floor__441(x3);

    if (columnMin < 0)  columnMin = 0;
    if (columnMax >= screenWidth)  columnMax = screenWidth - 1;
    if (columnMin > columnMax)  return;

    // Find slope 32:
    double slope32 = double(y2 - y3) / double(x2 - x3);
    double b32 = y3 - slope32 * x3;
    // Find slope 31:
    double slope31 = double(y3 - y1) / double(x3 - x1);
    double b31 = y1 - slope31 * x1;

    // Find intersect of line: x = c with slope21 and slop23 to get topEnd & bottomEnd
    for (int c = columnMin; c <= columnMax; c++) {
//        cout << "Working on scanline for column " << c << endl;
        
        double y31Intercept = slope31 * c + b31;
        double z31 = interpolationFunction(c, x1, x3, z1, z3);  // Interpolate z(bottomEnd)
        double r31 = interpolationFunction(c, x1, x3, r1, r3);
        double g31 = interpolationFunction(c, x1, x3, g1, g3);
        double b31 = interpolationFunction(c, x1, x3, b1, b3);
        double s31 = interpolationFunction(c, x1, x3, s1, s3);
        
        double y32Intercept = slope32 * c + b32;
        double z32 = interpolationFunction(c, x2, x3, z2, z3);  // Interpolate z(topEnd)
        double r32 = interpolationFunction(c, x2, x3, r2, r3);
        double g32 = interpolationFunction(c, x2, x3, g2, g3);
        double b32 = interpolationFunction(c, x2, x3, b2, b3);
        double s32 = interpolationFunction(c, x2, x3, s2, s3);
        
//        cout << "One end is at Y = " << y32Intercept << ", Z = " << z32 << " and color " << r32 << ", " << g32 << ", " << b32 << endl;
//        cout << "Other end  at Y = " << y31Intercept << ", Z = " << z31 << " and color " << r31 << ", " << g31 << ", " << b31 << endl;

        int bottomEnd = ceil__441(y31Intercept);
        int topEnd = floor__441(y32Intercept);

        // Same here, if bottomEnd or topEnd gets out of boundary, set it back to boundary. You don't care about points outside boundary, just set the pixels inside to color.
        if (bottomEnd < 0)  bottomEnd = 0;
        if (topEnd >= screenWidth)  topEnd = screenWidth - 1;

        for (int r = bottomEnd; r <= topEnd; r++) {
            // Interpolate z(c,r),r,g,b from z(bottomEnd), z(topEnd)
            double zi = interpolationFunction(r, y32Intercept, y31Intercept, z32, z31);
            double ri = interpolationFunction(r, y32Intercept, y31Intercept, r32, r31);
            double gi = interpolationFunction(r, y32Intercept, y31Intercept, g32, g31);
            double bi = interpolationFunction(r, y32Intercept, y31Intercept, b32, b31);
            double si = interpolationFunction(r, y32Intercept, y31Intercept, s32, s31);

//            cout << "Scanline produced fragment at col=" << c << ", row=" << r << " with depth " << zi;
//            cout << ", and color " << ri << ", " << gi << ", " << bi << endl;
            
            if (zi > depthColor[c][r])  // If ( z(c,r) > depthBuffer(c,r) ) overwrite
            {
                int index = 3*(r * screenWidth + c);   // Algorithm for indexing (lecture 1)
                
                double rFinal = ri*si < 1 ? ri*si : 1;
                double gFinal = gi*si < 1 ? gi*si : 1;
                double bFinal = bi*si < 1 ? bi*si : 1;
                
                buffer[index + 0] = ceil__441(255*rFinal);
                buffer[index + 1] = ceil__441(255*gFinal);
                buffer[index + 2] = ceil__441(255*bFinal);
                
                depthColor[c][r] = zi;  // Update
            }
        }
    }
}


void splitFunction(double x1, double y1, double z1, double r1, double g1, double b1, double x2, double y2, double z2, double r2, double g2, double b2, double x3, double y3, double z3,double r3, double g3, double b3, double s1, double s2, double s3, unsigned char * & buffer, vector<vector<double> > & depthColor, int screenWidth, int triangleNum) {
//    cout << "Working on triangle: " << triangleNum << endl;
//    cout << "(" << x1 << ", " << y1 << ", " << z1 << "), " << "color = (" << r1*255 << ", " << g1*255 << ", " << b1*255 << ")" << endl;
//    cout << "(" << x2 << ", " << y2 << ", " << z2 << "), " << "color = (" << r2*255 << ", " << g2*255 << ", " << b2*255 << ")" << endl;
//    cout << "(" << x3 << ", " << y3 << ", " << z3 << "), " << "color = (" << r3*255 << ", " << g3*255 << ", " << b3*255 << ")" << endl;
    

    // vect( (x1,y1,z1), (x2,y2,z2), (x3,y3,z3) ), then sort by x, then y
    vector<vector<double> > vect;
    vector<double> vect1; vect1.push_back(x1); vect1.push_back(y1); vect1.push_back(z1);
        vect1.push_back(r1); vect1.push_back(g1); vect1.push_back(b1); vect1.push_back(s1);
    vector<double> vect2; vect2.push_back(x2); vect2.push_back(y2); vect2.push_back(z2);
        vect2.push_back(r2); vect2.push_back(g2); vect2.push_back(b2); vect2.push_back(s2);
    vector<double> vect3; vect3.push_back(x3); vect3.push_back(y3); vect3.push_back(z3);
        vect3.push_back(r3); vect3.push_back(g3); vect3.push_back(b3); vect3.push_back(s3);
    vect.push_back(vect1); vect.push_back(vect2); vect.push_back(vect3);

    
    // By sorting like this, points will always be like: (bottomleft, topleft, right)
    // Example: (0,0), (0,99), (10, -30)  instead of randomly placed
    sort(vect.begin(), vect.end(), sortByXThenY);

    // Relocate points
    x1 = vect[0][0]; y1 = vect[0][1]; z1 = vect[0][2]; r1 = vect[0][3]; g1 = vect[0][4]; b1 = vect[0][5]; s1 = vect[0][6];
    x2 = vect[1][0]; y2 = vect[1][1]; z2 = vect[1][2]; r2 = vect[1][3]; g2 = vect[1][4]; b2 = vect[1][5]; s2 = vect[1][6];
    x3 = vect[2][0]; y3 = vect[2][1]; z3 = vect[2][2]; r3 = vect[2][3]; g3 = vect[2][4]; b3 = vect[2][5]; s3 = vect[2][6];
    
//    cout << "Working on triangle: " << triangleNum << endl;
//    cout << "(" << x1 << ", " << y1 << ", " << z1 << "), " << "color = (" << r1*255 << ", " << g1*255 << ", " << b1*255 << ")" << endl;
//    cout << "(" << x2 << ", " << y2 << ", " << z2 << "), " << "color = (" << r2*255 << ", " << g2*255 << ", " << b2*255 << ")" << endl;
//    cout << "(" << x3 << ", " << y3 << ", " << z3 << "), " << "color = (" << r3*255 << ", " << g3*255 << ", " << b3*255 << ")" << endl;

    double slopeSplit = double(y1 - y3) / double(x1 - x3);
    double bSplit = y3 - slopeSplit * x3;
    double y0 = slopeSplit * x2 + bSplit;
    double z0 = interpolationFunction(x2, x1, x3, z1, z3);
    double r0 = interpolationFunction(x2, x1, x3, r1, r3);
    double g0 = interpolationFunction(x2, x1, x3, g1, g3);
    double b0 = interpolationFunction(x2, x1, x3, b1, b3);
    double s0 = interpolationFunction(x2, x1, x3, s1, s3);
    
    
    double x3Left = x1, y3Left = y1, z3Left = z1, r3Left = r1, g3Left = g1, b3Left = b1, s3Left = s1;
    double x1Left = x2, y1Left, z1Left, r1Left, g1Left, b1Left, s1Left;
    double x2Left = x2, y2Left, z2Left, r2Left, g2Left, b2Left, s2Left;
    if (y0 < y2) {
        y1Left = y0; z1Left = z0; r1Left = r0; g1Left = g0; b1Left = b0; s1Left = s0;
        y2Left = y2; z2Left = z2; r2Left = r2; g2Left = g2; b2Left = b2; s2Left = s2;
    }
    else { // y0 > y2
        y1Left = y2; z1Left = z2; r1Left = r2; g1Left = g2; b1Left = b2; s1Left = s2;
        y2Left = y0; z2Left = z0; r2Left = r0; g2Left = g0; b2Left = b0; s2Left = s0;
    }

    double x3Right = x3, y3Right = y3, z3Right = z3, r3Right = r3, g3Right = g3, b3Right = b3, s3Right = s3;
    double x1Right = x2, y1Right, z1Right, r1Right, g1Right, b1Right, s1Right;
    double x2Right = x2, y2Right, z2Right, r2Right, g2Right, b2Right, s2Right;
    if (y0 < y2) {
        y1Right = y0; z1Right = z0; r1Right = r0; g1Right = g0; b1Right = b0; s1Right = s0;
        y2Right = y2; z2Right = z2; r2Right = r2; g2Right = g2; b2Right = b2; s2Right = s2;
    }
    else { // y0 > y2
        y1Right = y2; z1Right = z2; r1Right = r2; g1Right = g2; b1Right = b2; s1Right = s0;
        y2Right = y0; z2Right = z0; r2Right = r0; g2Right = g0; b2Right = b0; s2Right = s0;
    }


    workingOnTriangleGoingLeft(x1Left, y1Left, z1Left, r1Left, g1Left, b1Left, x2Left, y2Left, z2Left, r2Left, g2Left, b2Left, x3Left, y3Left, z3Left, r3Left, g3Left, b3Left, s1Left, s2Left, s3Left, buffer, depthColor, screenWidth, triangleNum);

    workingOnTriangleGoingRight(x1Right, y1Right, z1Right, r1Right, g1Right, b1Right, x2Right, y2Right, z2Right, r2Right, g2Right, b2Right, x3Right, y3Right, z3Right, r3Right, g3Right, b3Right, s1Right, s2Right, s3Right, buffer, depthColor, screenWidth, triangleNum);

//    cout << endl;
}

void printMatrixVector(const vector<vector<double> > & v) {
    if (v.size() == 0)  {   cout << "Blank Matrix "; return; }
    for (int i = 0; i < v.size(); i++) {
        for (int j = 0; j < v[0].size(); j++) {
            cout << v[i][j] << "\t\t";
        }
        cout << endl;
    }
}

void printMatrixVectorSingle(const vector<double> & v) {
    if (v.size() == 0)  {   cout << "Blank Matrix "; return; }
    for (int i = 0; i < v.size(); i++) {
        cout << v[i] << ", ";
    }
    cout << endl;
}

void normalizeMatrixVector(vector<double> & v) {
    double length = 0;
    for (int i = 0; i < v.size(); i++) {
        length += pow(v[i],2);
    }
    for (int i = 0; i < v.size(); i++) {
        v[i] /= sqrt(length);
    }
    return;
}

double dotProduct(const vector<double> & first, const vector<double> & second) {
    double result = 0;
    for (int i = 0; i < first.size(); i++) {
        result += double(first[i]*second[i]);
    }
    return result;
}

vector<double> crossProductTwo3DMatrixVector(const vector<double> & first, const vector<double> & second) {
    vector<double> result(3, 0);
    result[0] = double(first[1]*second[2]) - first[2]*second[1];
    result[1] = double(second[0]*first[2]) - first[0]*second[2];
    result[2] = double(first[0]*second[1]) - second[0]*first[1];
    return result;
}

vector<vector<double> > multiplyTwo4x4MatrixVector(const vector<vector<double> > & first, const vector<vector<double> > & second) {
    vector<vector<double> > result;
    
    if (first.size() == 0)  return second;
    if (second.size() == 0)  return first;
    if (first[0].size() != second.size())   return result;
    
    int size = second.size();
    
    for (int r = 0; r < size; r++) {
        vector<double> currentRowVector;
        for (int c = 0; c < size; c++) {
            double curVal = 0;
            int i = 0;
            while (i < size) {
                curVal += first[r][i]*second[i][c];
                i++;
            }
            currentRowVector.push_back(curVal);
        }
        result.push_back(currentRowVector);
    }
    
    return result;
}

vector<vector<double> > SetUpCamera(const Camera & c, int screenWidth, int screenHeight) {
    // Camera Transform Matrix (First One):
    
    // CAMERA FRAME
    // shorten up some variable, so don't have to access camera class all the time
    vector<double> O; O.push_back(double(c.position[0])); O.push_back(double(c.position[1])); O.push_back(double(c.position[2]));
    vector<double> focus; focus.push_back(double(c.focus[0])); focus.push_back(double(c.focus[1])); focus.push_back(double(c.focus[2]));
    vector<double> up; up.push_back(double(c.up[0])); up.push_back(double(c.up[1])); up.push_back(double(c.up[2]));
    
    vector<double> w(3,0);
    w[0] = O[0] - focus[0];
    w[1] = O[1] - focus[1];
    w[2] = O[2] - focus[2];
    
    normalizeMatrixVector(w);   // Done with w

    vector<double> u = crossProductTwo3DMatrixVector(up, w);
    normalizeMatrixVector(u);   // Done with u
    
    vector<double> v = crossProductTwo3DMatrixVector(w, u);
    normalizeMatrixVector(v);   // Done with v
    
    // CAMERA TRANSFORM
    vector<double> x; x.push_back(1); x.push_back(0); x.push_back(0);
    vector<double> y; y.push_back(0); y.push_back(1); y.push_back(0);
    vector<double> z; z.push_back(0); z.push_back(0); z.push_back(1);
    vector<double> t; t.push_back(0); t.push_back(0); t.push_back(0);
    t[0] -= O[0]; t[1] -= O[1]; t[2] -= O[2];
    
    vector<vector<double> > CT;
    vector<double> CTrow1; CTrow1.push_back(dotProduct(u,x)); CTrow1.push_back(dotProduct(v,x)); CTrow1.push_back(dotProduct(w,x)); CTrow1.push_back(0);
    vector<double> CTrow2; CTrow2.push_back(dotProduct(u,y)); CTrow2.push_back(dotProduct(v,y)); CTrow2.push_back(dotProduct(w,y)); CTrow2.push_back(0);
    vector<double> CTrow3; CTrow3.push_back(dotProduct(u,z)); CTrow3.push_back(dotProduct(v,z)); CTrow3.push_back(dotProduct(w,z)); CTrow3.push_back(0);
    vector<double> CTrow4; CTrow4.push_back(dotProduct(u,t)); CTrow4.push_back(dotProduct(v,t)); CTrow4.push_back(dotProduct(w,t)); CTrow4.push_back(1);
    CT.push_back(CTrow1); CT.push_back(CTrow2); CT.push_back(CTrow3); CT.push_back(CTrow4);
    
//    cout << "CT Matrix: " << endl;
//    printMatrixVector(CT);
    
    
    // View Transform Matrix (Middle One):
    double cotAngleDivide2 = double(cos(c.angle/2)) / sin(c.angle/2);
    double row3col3ofVT = double(c.far + c.near) / (c.far - c.near);
    double row4col3ofVT = double(2*c.far*c.near) / (c.far - c.near);
    vector<vector<double> > VT;
    vector<double> VTrow1; VTrow1.push_back(cotAngleDivide2); VTrow1.push_back(0); VTrow1.push_back(0); VTrow1.push_back(0);
    vector<double> VTrow2; VTrow2.push_back(0); VTrow2.push_back(cotAngleDivide2); VTrow2.push_back(0); VTrow2.push_back(0);
    vector<double> VTrow3; VTrow3.push_back(0); VTrow3.push_back(0); VTrow3.push_back(row3col3ofVT); VTrow3.push_back(-1);
    vector<double> VTrow4; VTrow4.push_back(0); VTrow4.push_back(0); VTrow4.push_back(row4col3ofVT); VTrow4.push_back(0);
    VT.push_back(VTrow1); VT.push_back(VTrow2); VT.push_back(VTrow3); VT.push_back(VTrow4);
    
//    cout << "VT Matrix: " << endl;
//    printMatrixVector(VT);
    
    
    // Device Transform Matrix (Last one):
    vector<vector<double> > DT;
    vector<double> DTrow1; DTrow1.push_back(screenWidth/2); DTrow1.push_back(0); DTrow1.push_back(0); DTrow1.push_back(0);
    vector<double> DTrow2; DTrow2.push_back(0); DTrow2.push_back(screenHeight/2); DTrow2.push_back(0); DTrow2.push_back(0);
    vector<double> DTrow3; DTrow3.push_back(0); DTrow3.push_back(0); DTrow3.push_back(1); DTrow3.push_back(0);
    vector<double> DTrow4; DTrow4.push_back(screenWidth/2); DTrow4.push_back(screenHeight/2); DTrow4.push_back(0); DTrow4.push_back(1);
    DT.push_back(DTrow1); DT.push_back(DTrow2); DT.push_back(DTrow3); DT.push_back(DTrow4);
    
    //printMatrixVector(DT);
    
//    cout << "totalTransform Matrix: " << endl;
    vector<vector<double> > totalTransform = multiplyTwo4x4MatrixVector(multiplyTwo4x4MatrixVector(CT, VT), DT);
//    printMatrixVector(totalTransform);
    
    return totalTransform;
}

vector<double> transformPoint(const double & x, const double & y, const double & z, const vector<vector<double> > & v) {
    vector<double> result;
    double res1 = double(x*v[0][0]) + y*v[1][0] + z*v[2][0] + 1*v[3][0];
    double res2 = double(x*v[0][1]) + y*v[1][1] + z*v[2][1] + 1*v[3][1];
    double res3 = double(x*v[0][2]) + y*v[1][2] + z*v[2][2] + 1*v[3][2];
    double res4 = double(x*v[0][3]) + y*v[1][3] + z*v[2][3] + 1*v[3][3];
    
    result.push_back(res1/res4); result.push_back(res2/res4); result.push_back(res3/res4);
    
    return result;
}

double CalculatePhongShading(const Camera & c, const LightingParameters & lp, double x, double y, double z, double n1, double n2, double n3) {
    
    vector<double> viewDir; viewDir.push_back(c.position[0] - x); viewDir.push_back(c.position[1] - y); viewDir.push_back(c.position[2] - z);
    vector<double> L; L.push_back(lp.lightDir[0]); L.push_back(lp.lightDir[1]); L.push_back(lp.lightDir[2]);
    vector<double> N; N.push_back(n1); N.push_back(n2); N.push_back(n3);
    
    normalizeMatrixVector(viewDir);
    normalizeMatrixVector(L);
    normalizeMatrixVector(N);

    
    double LdotN = dotProduct(L, N);
    LdotN = LdotN > 0 ? LdotN : 0;  // LdotN = max(LdotN, 0.0);
    double diffuse = lp.Kd * LdotN;
    //"diffuse = clamp(diffuse, 0.0, 1.0);\n"
    diffuse = diffuse > 0 ? diffuse : 0;
    diffuse = diffuse < 1 ? diffuse : 1;
    
    vector<double> R(3,0);  // Calculating R
    R[0] = 2 * LdotN * N[0] - L[0];
    R[1] = 2 * LdotN * N[1] - L[1];
    R[2] = 2 * LdotN * N[2] - L[2];
    
    normalizeMatrixVector(R);
    
    double RdotV = dotProduct(R, viewDir);
    RdotV = RdotV > 0 ? RdotV : 0; // RdotV = max(RdotV, 0.0);
    
    double specular = lp.Ks * pow(RdotV, lp.alpha);
    specular = specular > 0 ? specular : 0;
    specular = specular < 1 ? specular : 1;
    
    double totalShading = lp.Ka + diffuse + specular;
    
    return totalShading;
}


int main()
{
   // YOUR CODE GOES HERE TO DEPOSIT TRIANGLES INTO PIXELS USING THE SCANLINE ALGORITHM
    
    vector<Triangle> triangles = GetTriangles();
    
    cout << "Num triangles is: " << triangles.size() << endl;

    for (int frame = 0; frame < 1; frame += 1) {
        vtkImageData *image = NewImage(1000, 1000);
        unsigned char *buffer =
          (unsigned char *) image->GetScalarPointer(0,0,0);
        int npixels = 1000*1000;
        for (int i = 0 ; i < npixels*3 ; i++)
            buffer[i] = 0;
         
         vector<vector<double> > depthColor;
         vector<double> tmpForDepthColor(1000, -1);
         for (int i = 0; i < 1000; i++)
             depthColor.push_back(tmpForDepthColor);
        
        // 1000x1000
        Screen screen;
        screen.buffer = buffer;
        screen.width = 1000;
        screen.height = 1000;
        
        Camera c = GetCamera(frame, 1000);
        // Shading stuff
        LightingParameters lp = GetLighting(c);
//        cout << "lightDir: " << lp.lightDir[0] << ',' << lp.lightDir[1] << ',' << lp.lightDir[2] << ',' << endl;
//        cout << "Ka: " << lp.Ka << endl;
//        cout << "Kd: " << lp.Kd << endl;
//        cout << "Ks: " << lp.Ks << endl;
//        cout << "alpha: " << lp.alpha << endl;
        
        // Set up Camera and give a totalTransform Matrix
        vector<vector<double> > totalTransform = SetUpCamera(c, screen.width, screen.height);
        
        for (int i = 0; i < triangles.size(); i++) {
//            cout << "Working on triangle: " << i << endl;
//            cout << "(" << triangles[i].X[0] << ", " << triangles[i].Y[0] << ", " << triangles[i].Z[0] << "), " << "color = (" << triangles[i].colors[0][0] << ", " << triangles[i].colors[0][1] << ", " << triangles[i].colors[0][2] << ")" << endl;
//            cout << "(" << triangles[i].X[1] << ", " << triangles[i].Y[1] << ", " << triangles[i].Z[1] << "), " << "color = (" << triangles[i].colors[1][0] << ", " << triangles[i].colors[1][1] << ", " << triangles[i].colors[1][2] << ")" << endl;
//            cout << "(" << triangles[i].X[2] << ", " << triangles[i].Y[2] << ", " << triangles[i].Z[2] << "), " << "color = (" << triangles[i].colors[2][0] << ", " << triangles[i].colors[2][1] << ", " << triangles[i].colors[2][2] << ")" << endl;
            
            // Calculate shading
            double s1 = CalculatePhongShading(c, lp, triangles[i].X[0], triangles[i].Y[0], triangles[i].Z[0], triangles[i].normals[0][0], triangles[i].normals[0][1], triangles[i].normals[0][2]);
            double s2 = CalculatePhongShading(c, lp, triangles[i].X[1], triangles[i].Y[1], triangles[i].Z[1], triangles[i].normals[1][0], triangles[i].normals[1][1], triangles[i].normals[1][2]);
            double s3 = CalculatePhongShading(c, lp, triangles[i].X[2], triangles[i].Y[2], triangles[i].Z[2], triangles[i].normals[2][0], triangles[i].normals[2][1], triangles[i].normals[2][2]);
            
//            cout << endl;
            
            
            // Transforming points
            vector<double> set1 = transformPoint(triangles[i].X[0], triangles[i].Y[0], triangles[i].Z[0], totalTransform);
            vector<double> set2 = transformPoint(triangles[i].X[1], triangles[i].Y[1], triangles[i].Z[1], totalTransform);
            vector<double> set3 = transformPoint(triangles[i].X[2], triangles[i].Y[2], triangles[i].Z[2], totalTransform);

            
            // Rendering transformed Triangles
            splitFunction(set1[0], set1[1], set1[2], triangles[i].colors[0][0], triangles[i].colors[0][1], triangles[i].colors[0][2], set2[0], set2[1], set2[2], triangles[i].colors[1][0], triangles[i].colors[1][1], triangles[i].colors[1][2], set3[0], set3[1], set3[2], triangles[i].colors[2][0], triangles[i].colors[2][1], triangles[i].colors[2][2], s1, s2, s3, buffer, depthColor, screen.width, i);
        }
        
        
        // Write data
        string finalFrameNum = "000";
        string frameNum = to_string(frame); // No need this for 1F
        for (int i = frameNum.length() - 1; i >= 0; i--) {
            finalFrameNum[2 - (frameNum.length() - 1 - i)] = frameNum[i];
        }
        string s = "frame" + finalFrameNum;
        cout << "Writing frame: " << s << endl;
        WriteImage(image, s);
        
        
    }
}
