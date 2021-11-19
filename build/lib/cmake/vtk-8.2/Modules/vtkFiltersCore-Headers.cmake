set(vtkFiltersCore_HEADERS_LOADED 1)
set(vtkFiltersCore_HEADERS "vtkAppendArcLength;vtkAppendFilter;vtkAppendPolyData;vtkAppendSelection;vtkArrayCalculator;vtkAssignAttribute;vtkAttributeDataToFieldDataFilter;vtkBinCellDataFilter;vtkCellDataToPointData;vtkCleanPolyData;vtkClipPolyData;vtkCompositeDataProbeFilter;vtkConnectivityFilter;vtkContourFilter;vtkContourGrid;vtkContourHelper;vtkContour3DLinearGrid;vtkDataObjectGenerator;vtkDataObjectToDataSetFilter;vtkDataSetEdgeSubdivisionCriterion;vtkDataSetToDataObjectFilter;vtkDecimatePolylineFilter;vtkDecimatePro;vtkDelaunay2D;vtkDelaunay3D;vtkElevationFilter;vtkExecutionTimer;vtkFeatureEdges;vtkFieldDataToAttributeDataFilter;vtkFlyingEdges2D;vtkFlyingEdges3D;vtkFlyingEdgesPlaneCutter;vtkGlyph2D;vtkGlyph3D;vtkHedgeHog;vtkHull;vtkIdFilter;vtkMarchingCubes;vtkMarchingSquares;vtkMaskFields;vtkMaskPoints;vtkMaskPolyData;vtkMassProperties;vtkMergeDataObjectFilter;vtkMergeFields;vtkMergeFilter;vtkMoleculeAppend;vtkMultiObjectMassProperties;vtkPlaneCutter;vtkPointDataToCellData;vtkPolyDataConnectivityFilter;vtkPolyDataNormals;vtkProbeFilter;vtkQuadricClustering;vtkQuadricDecimation;vtkRearrangeFields;vtkRemoveDuplicatePolys;vtkResampleToImage;vtkResampleWithDataSet;vtkReverseSense;vtkSimpleElevationFilter;vtkSmoothPolyDataFilter;vtkSphereTreeFilter;vtkStaticCleanPolyData;vtkStripper;vtkStructuredGridOutlineFilter;vtkSynchronizedTemplates2D;vtkSynchronizedTemplates3D;vtkSynchronizedTemplatesCutter3D;vtkTensorGlyph;vtkThreshold;vtkThresholdPoints;vtkTransposeTable;vtkTriangleFilter;vtkTriangleMeshPointNormals;vtkTubeFilter;vtkUnstructuredGridQuadricDecimation;vtkVectorDot;vtkVectorNorm;vtkVoronoi2D;vtkWindowedSincPolyDataFilter;vtkCutter;vtkCompositeCutter;vtkGridSynchronizedTemplates3D;vtkRectilinearSynchronizedTemplates;vtkEdgeSubdivisionCriterion;vtkStreamingTessellator;vtkImplicitPolyDataDistance;vtkStreamerBase;vtkCenterOfMass;vtkImageAppend;vtkStructuredGridAppend;vtkAppendCompositeDataLeaves")

foreach(header ${vtkFiltersCore_HEADERS})
  set(vtkFiltersCore_HEADER_${header}_EXISTS 1)
endforeach()
