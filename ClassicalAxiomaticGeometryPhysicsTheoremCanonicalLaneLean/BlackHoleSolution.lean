import HautevilleHouse.ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean.CosmologicalModel

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure BlackHoleSolutionPackage
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} {W : GravitationalWavePackage Geod}
    (C : CosmologicalModelPackage W) where
  vacuumSolution : Prop
  sphericalSymmetry : Prop
  schwarzschildMetric : Prop
  horizonsPredicted : Prop
  singularitiesInGeometry : Prop
  energyConditionsViolated : Prop
  cosmicCensorship : Prop

structure BlackHoleSolutionEvidence
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} {W : GravitationalWavePackage Geod}
    {C : CosmologicalModelPackage W}
    (B : BlackHoleSolutionPackage C) where
  vacuumSolutionClosed : B.vacuumSolution
  sphericalSymmetryClosed : B.sphericalSymmetry
  schwarzschildMetricClosed : B.schwarzschildMetric
  horizonsPredictedClosed : B.horizonsPredicted
  singularitiesInGeometryClosed : B.singularitiesInGeometry
  energyConditionsViolatedClosed : B.energyConditionsViolated
  cosmicCensorshipClosed : B.cosmicCensorship

def BlackHoleSolutionClosed
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} {W : GravitationalWavePackage Geod}
    {C : CosmologicalModelPackage W}
    (B : BlackHoleSolutionPackage C) : Prop :=
  B.vacuumSolution ∧ B.sphericalSymmetry ∧ B.schwarzschildMetric ∧
  B.horizonsPredicted ∧ B.singularitiesInGeometry ∧
  B.energyConditionsViolated ∧ B.cosmicCensorship

theorem black_hole_solution_closed_from_evidence
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} {W : GravitationalWavePackage Geod}
    {C : CosmologicalModelPackage W}
    (B : BlackHoleSolutionPackage C) (Ev : BlackHoleSolutionEvidence B) :
    BlackHoleSolutionClosed B := by
  refine And.intro Ev.vacuumSolutionClosed
    (And.intro Ev.sphericalSymmetryClosed
      (And.intro Ev.schwarzschildMetricClosed
        (And.intro Ev.horizonsPredictedClosed
          (And.intro Ev.singularitiesInGeometryClosed
            (And.intro Ev.energyConditionsViolatedClosed Ev.cosmicCensorshipClosed)))))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse
