import HautevilleHouse.ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean.EinsteinFieldEquations
import HautevilleHouse.ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean.GeodesicStructure

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure GravitationalWavePackage
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    (Geod : GeodesicPackage G) where
  linearizedEquation : Prop
  planeWaveSolution : Prop
  polarizationTensors : Prop
  propagationAtSpeedOfLight : Prop
  energyFlux : Prop
  geodesicDeviation : Prop

structure GravitationalWaveEvidence
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} (W : GravitationalWavePackage Geod) where
  linearizedEquationClosed : W.linearizedEquation
  planeWaveSolutionClosed : W.planeWaveSolution
  polarizationTensorsClosed : W.polarizationTensors
  propagationAtSpeedOfLightClosed : W.propagationAtSpeedOfLight
  energyFluxClosed : W.energyFlux
  geodesicDeviationClosed : W.geodesicDeviation

def GravitationalWaveClosed
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} (W : GravitationalWavePackage Geod) : Prop :=
  W.linearizedEquation ∧ W.planeWaveSolution ∧ W.polarizationTensors ∧
  W.propagationAtSpeedOfLight ∧ W.energyFlux ∧ W.geodesicDeviation

theorem gravitational_wave_closed_from_evidence
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} (W : GravitationalWavePackage Geod)
    (Ev : GravitationalWaveEvidence W) : GravitationalWaveClosed W := by
  refine And.intro Ev.linearizedEquationClosed
    (And.intro Ev.planeWaveSolutionClosed
      (And.intro Ev.polarizationTensorsClosed
        (And.intro Ev.propagationAtSpeedOfLightClosed
          (And.intro Ev.energyFluxClosed Ev.geodesicDeviationClosed))))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse
