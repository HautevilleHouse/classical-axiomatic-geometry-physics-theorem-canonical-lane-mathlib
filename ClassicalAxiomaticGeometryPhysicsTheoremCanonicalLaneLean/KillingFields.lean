import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure KillingFieldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Prop
  vectorField : Type v
  killingEquation : Prop
  lieDerivativeVanishes : Prop
  isometryGenerator : Prop

structure KillingFieldEvidence (K : KillingFieldPackage) where
  metricClosed : K.metric
  killingEquationClosed : K.killingEquation
  lieDerivativeVanishesClosed : K.lieDerivativeVanishes
  isometryGeneratorClosed : K.isometryGenerator

def KillingFieldClosed (K : KillingFieldPackage) : Prop :=
  K.metric ∧ K.killingEquation ∧ K.lieDerivativeVanishes ∧ K.isometryGenerator

theorem killing_field_closed_from_evidence (K : KillingFieldPackage) (E : KillingFieldEvidence K) : KillingFieldClosed K := by
  exact And.intro E.metricClosed
    (And.intro E.killingEquationClosed
      (And.intro E.lieDerivativeVanishesClosed
        E.isometryGeneratorClosed))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse