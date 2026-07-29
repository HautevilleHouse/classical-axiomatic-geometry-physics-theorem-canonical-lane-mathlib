import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure EuclideanPoint where
  x : ℝ
  y : ℝ
  z : ℝ

def distance (p q : EuclideanPoint) : ℝ :=
  Real.sqrt ((p.x - q.x)^2 + (p.y - q.y)^2 + (p.z - q.z)^2)

theorem distance_nonneg (p q : EuclideanPoint) : distance p q ≥ 0 := by
  apply Real.sqrt_nonneg

structure GeometricLine where
  point1 : EuclideanPoint
  point2 : EuclideanPoint
  direction : EuclideanPoint
  directionNonzero : direction ≠ { x := 0, y := 0, z := 0 }

structure GeometricPlane where
  point : EuclideanPoint
  normal : EuclideanPoint
  normalNonzero : normal ≠ { x := 0, y := 0, z := 0 }

structure AxiomaticGeometrySpace where
  points : Set EuclideanPoint
  lines : Set GeometricLine
  planes : Set GeometricPlane
  incidenceAxioms : Prop
  betweennessAxioms : Prop
  congruenceAxioms : Prop
  continuityAxioms : Prop

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse