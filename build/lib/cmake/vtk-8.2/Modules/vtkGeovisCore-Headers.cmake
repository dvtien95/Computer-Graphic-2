set(vtkGeovisCore_HEADERS_LOADED 1)
set(vtkGeovisCore_HEADERS "vtkGeoAdaptiveArcs;vtkGeoAlignedImageRepresentation;vtkGeoAlignedImageSource;vtkGeoArcs;vtkGeoAssignCoordinates;vtkGeoCamera;vtkGeoFileImageSource;vtkGeoFileTerrainSource;vtkGeoGlobeSource;vtkGeoGraticule;vtkGeoImageNode;vtkGeoInteractorStyle;vtkGeoProjectionSource;vtkGeoRandomGraphSource;vtkGeoSampleArcs;vtkGeoSource;vtkGeoSphereTransform;vtkGeoTerrain;vtkGeoTerrain2D;vtkGeoTerrainNode;vtkGeoTreeNode;vtkGeoTreeNodeCache;vtkGlobeSource;vtkCompassRepresentation;vtkCompassWidget;vtkGeoProjection;vtkGeoTransform")

foreach(header ${vtkGeovisCore_HEADERS})
  set(vtkGeovisCore_HEADER_${header}_EXISTS 1)
endforeach()