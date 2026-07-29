import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure NewtonDynamics where
  mass : ℝ
  position : EuclideanPoint -> ℝ
  velocity : EuclideanPoint -> ℝ
  force : EuclideanPoint -> ℝ
  secondLawHolds : ∀ t, mass * acceleration t = force t
  where
    acceleration (t : ℝ) : EuclideanPoint := { x := 0, y := 0, z := 0 } -- placeholder

structure GravitationalLaw where
  G : ℝ
  forceBetween (m1 m2 : ℝ) (r : EuclideanPoint) : ℝ := if r.x ≠ 0 then -G * m1 * m2 / (r.x)^2 else 0

structure MaxwellElectromagnetism where
  electricField : EuclideanPoint -> EuclideanPoint
  magneticField : EuclideanPoint -> EuclideanPoint
  chargeDensity : EuclideanPoint -> ℝ
  currentDensity : EuclideanPoint -> EuclideanPoint
  maxwellEquations : Prop

structure ClassicalPhysicsLaws where
  newtonDynamics : NewtonDynamics
  gravitation : GravitationalLaw
  electromagnetism : MaxwellElectromagnetism
  lawsConsistent : Prop

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse