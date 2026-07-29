import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure CurvedSpacetimeAxiomsPackage where
  lorentzianMetric : Prop
  einsteinFieldEquations : Prop
  geodesicDeviation : Prop
  equivalencePrinciple : Prop

def CurvedSpacetimeAxiomsClosed (C : CurvedSpacetimeAxiomsPackage) : Prop :=
  C.lorentzianMetric ∧ C.einsteinFieldEquations ∧ C.geodesicDeviation ∧ C.equivalencePrinciple

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse