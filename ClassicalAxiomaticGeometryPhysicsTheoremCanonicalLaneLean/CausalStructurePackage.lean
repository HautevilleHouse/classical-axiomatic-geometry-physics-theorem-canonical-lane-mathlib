import ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean.AxiomaticGeometryPhysicsObject

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure CausalStructurePackage where
  causalCurves : Type
  timeSeparationFunction : Prop
  causalRelations : Prop
  globalCausalStructureDefined : Prop
  causalCurvesClosed : causalCurves
  timeSeparationFunctionClosed : timeSeparationFunction
  causalRelationsClosed : causalRelations
  globalCausalStructureDefinedClosed : globalCausalStructureDefined

def CausalStructureClosed (C : CausalStructurePackage) : Prop :=
  C.causalCurves ∧ C.timeSeparationFunction ∧ C.causalRelations ∧ C.globalCausalStructureDefined

theorem causal_structure_closed_from_evidence (C : CausalStructurePackage)
    (E : C.causalCurvesClosed ∧ C.timeSeparationFunctionClosed ∧ C.causalRelationsClosed ∧ C.globalCausalStructureDefinedClosed) :
    CausalStructureClosed C := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 E.2.2.2))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse