import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure GeodesicStructure where
  manifold : Type u
  topology : TopologicalSpace manifold
  connection : Prop
  geodesicEquation : Prop
  exponentialMap : Prop
  normalCoordinates : Prop
  convexNeighborhood : Prop

structure GeodesicStructureEvidence (G : GeodesicStructure) where
  connectionClosed : G.connection
  geodesicEquationClosed : G.geodesicEquation
  exponentialMapClosed : G.exponentialMap
  normalCoordinatesClosed : G.normalCoordinates
  convexNeighborhoodClosed : G.convexNeighborhood

def GeodesicStructureClosed (G : GeodesicStructure) : Prop :=
  G.connection ∧ G.geodesicEquation ∧ G.exponentialMap ∧
  G.normalCoordinates ∧ G.convexNeighborhood

theorem geodesic_structure_closed_from_evidence (G : GeodesicStructure) (E : GeodesicStructureEvidence G) : GeodesicStructureClosed G := by
  exact And.intro E.connectionClosed
    (And.intro E.geodesicEquationClosed
      (And.intro E.exponentialMapClosed
        (And.intro E.normalCoordinatesClosed
          E.convexNeighborhoodClosed)))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse