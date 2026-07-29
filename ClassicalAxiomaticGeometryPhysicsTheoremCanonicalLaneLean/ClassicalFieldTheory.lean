import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure ClassicalFieldTheoryPackage where
  newtonianGravity : Prop
  maxwellEquations : Prop
  principleOfLeastAction : Prop
  energyMomentumConservation : Prop

def ClassicalFieldTheoryClosed (F : ClassicalFieldTheoryPackage) : Prop :=
  F.newtonianGravity ∧ F.maxwellEquations ∧ F.principleOfLeastAction ∧ F.energyMomentumConservation

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse