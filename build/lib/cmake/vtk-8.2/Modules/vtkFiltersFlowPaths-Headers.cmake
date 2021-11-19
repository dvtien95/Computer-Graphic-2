set(vtkFiltersFlowPaths_HEADERS_LOADED 1)
set(vtkFiltersFlowPaths_HEADERS "vtkAbstractInterpolatedVelocityField;vtkAMRInterpolatedVelocityField;vtkCachingInterpolatedVelocityField;vtkCellLocatorInterpolatedVelocityField;vtkCompositeInterpolatedVelocityField;vtkEvenlySpacedStreamlines2D;vtkInterpolatedVelocityField;vtkLagrangianParticleTracker;vtkLagrangianBasicIntegrationModel;vtkLagrangianParticle;vtkLagrangianMatidaIntegrationModel;vtkModifiedBSPTree;vtkParticlePathFilter;vtkParticleTracer;vtkParticleTracerBase;vtkStreaklineFilter;vtkStreamTracer;vtkTemporalInterpolatedVelocityField;vtkTemporalStreamTracer")

foreach(header ${vtkFiltersFlowPaths_HEADERS})
  set(vtkFiltersFlowPaths_HEADER_${header}_EXISTS 1)
endforeach()