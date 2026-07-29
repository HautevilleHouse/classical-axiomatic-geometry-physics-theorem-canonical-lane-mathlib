import ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean.AxiomaticGeometryPhysicsObject

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure EinsteinEquationPackage where
  stressEnergyTensor : Type
  cosmologicalConstant : Prop
  fieldEquation : Prop
  energyConditions : Prop
  stressEnergyTensorClosed : stressEnergyTensor
  cosmologicalConstantClosed : cosmologicalConstant
  fieldEquationClosed : fieldEquation
  energyConditionsClosed : energyConditions

def EinsteinEquationClosed (E : EinsteinEquationPackage) : Prop :=
  E.stressEnergyTensor ∧ E.cosmologicalConstant ∧ E.fieldEquation ∧ E.energyConditions

theorem einstein_equation_closed_from_evidence (E : EinsteinEquationPackage)
    (Ev : E.stressEnergyTensorClosed ∧ E.cosmologicalConstantClosed ∧ E.fieldEquationClosed ∧ E.energyConditionsClosed) :
    EinsteinEquationClosed E := by
  exact And.intro Ev.1 (And.intro Ev.2.1 (And.intro Ev.2.2.1 Ev.2.2.2))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse