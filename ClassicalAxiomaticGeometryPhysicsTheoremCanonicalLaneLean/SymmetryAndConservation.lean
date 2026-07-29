import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure SymmetryAndConservationPackage where
  noetherTheorem : Prop
  diffeomorphismInvariance : Prop
  killingVectors : Prop
  conservedCurrents : Prop

def SymmetryAndConservationClosed (S : SymmetryAndConservationPackage) : Prop :=
  S.noetherTheorem ∧ S.diffeomorphismInvariance ∧ S.killingVectors ∧ S.conservedCurrents

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse