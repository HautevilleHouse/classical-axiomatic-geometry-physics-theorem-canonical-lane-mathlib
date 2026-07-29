import ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean.CausalStructurePackage

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure GlobalHyperbolicityPackage {C : CausalStructurePackage} where
  causalCurvesComplete : Prop
  cauchySurfaceExists : Prop
  timeFunctionExists : Prop
  causalityConditions : Prop
  causalCurvesCompleteClosed : causalCurvesComplete
  cauchySurfaceExistsClosed : cauchySurfaceExists
  timeFunctionExistsClosed : timeFunctionExists
  causalityConditionsClosed : causalityConditions

def GlobalHyperbolicityClosed {C : CausalStructurePackage} (G : GlobalHyperbolicityPackage C) : Prop :=
  G.causalCurvesComplete ∧ G.cauchySurfaceExists ∧ G.timeFunctionExists ∧ G.causalityConditions

theorem global_hyperbolicity_closed_from_evidence
    {C : CausalStructurePackage} (G : GlobalHyperbolicityPackage C)
    (E : G.causalCurvesCompleteClosed ∧ G.cauchySurfaceExistsClosed ∧ G.timeFunctionExistsClosed ∧ G.causalityConditionsClosed) :
    GlobalHyperbolicityClosed G := by
  exact And.intro E.1 (And.intro E.2.1 (And.intro E.2.2.1 E.2.2.2))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse