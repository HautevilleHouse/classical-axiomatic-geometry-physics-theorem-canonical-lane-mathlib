import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure QuantumState where
  HilbertSpace : Type u
  vector : HilbertSpace
  normOne : ‖vector‖ = 1

structure Observable where
  operator : QuantumState.HilbertSpace → QuantumState.HilbertSpace
  selfAdjoint : ∀ ψ φ, ⟨operator ψ, φ⟩ = ⟨ψ, operator φ⟩

structure GeometricQuantumBridge where
  underlyingSpace : EuclideanPoint
  quantumState : QuantumState
  classicalLimit : Prop
  measurementOutcome : ℝ


end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse