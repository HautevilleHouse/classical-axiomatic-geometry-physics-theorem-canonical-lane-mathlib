import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure GeometricActionPrinciplePackage where
  hilbertAction : Prop
  palatiniVariation : Prop
  boundaryTerms : Prop
  hamiltonianConstraint : Prop

def GeometricActionPrincipleClosed (G : GeometricActionPrinciplePackage) : Prop :=
  G.hilbertAction ∧ G.palatiniVariation ∧ G.boundaryTerms ∧ G.hamiltonianConstraint

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse