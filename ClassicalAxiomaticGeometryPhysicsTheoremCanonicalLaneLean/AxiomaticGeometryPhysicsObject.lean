import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure GeometryPhysicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  metric : Type
  metricSmooth : Prop

structure AxiomaticPhysicsObject where
  space : GeometryPhysicsSpace
  fourDimensional : Prop
  lorentzianMetric : Prop
  einsteinEquation : Prop
  globallyHyperbolic : Prop
  conclusion : einsteinEquation ∧ lorentzianMetric ∧ globallyHyperbolic

structure EndgameState where
  object : AxiomaticPhysicsObject

def PhysicsWitnessClosed (O : AxiomaticPhysicsObject) : Prop :=
  O.einsteinEquation ∧ O.lorentzianMetric ∧ O.globallyHyperbolic

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse