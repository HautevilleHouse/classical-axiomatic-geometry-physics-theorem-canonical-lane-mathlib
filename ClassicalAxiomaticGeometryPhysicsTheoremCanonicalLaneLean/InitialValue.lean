import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure InitialValuePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  cauchyData : Prop
  constraintEquations : Prop
  evolutionEquations : Prop
  wellPosedness : Prop
  localExistence : Prop
  uniqueness : Prop

structure InitialValueEvidence (I : InitialValuePackage) where
  cauchyDataClosed : I.cauchyData
  constraintEquationsClosed : I.constraintEquations
  evolutionEquationsClosed : I.evolutionEquations
  wellPosednessClosed : I.wellPosedness
  localExistenceClosed : I.localExistence
  uniquenessClosed : I.uniqueness

def InitialValueClosed (I : InitialValuePackage) : Prop :=
  I.cauchyData ∧ I.constraintEquations ∧ I.evolutionEquations ∧
  I.wellPosedness ∧ I.localExistence ∧ I.uniqueness

theorem initial_value_closed_from_evidence (I : InitialValuePackage) (E : InitialValueEvidence I) : InitialValueClosed I := by
  exact And.intro E.cauchyDataClosed
    (And.intro E.constraintEquationsClosed
      (And.intro E.evolutionEquationsClosed
        (And.intro E.wellPosednessClosed
          (And.intro E.localExistenceClosed
            E.uniquenessClosed))))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse