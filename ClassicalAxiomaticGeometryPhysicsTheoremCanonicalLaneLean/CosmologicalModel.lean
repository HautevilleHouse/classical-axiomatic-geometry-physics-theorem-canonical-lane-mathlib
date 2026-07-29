import HautevilleHouse.ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean.GravitationalWaves

namespace HautevilleHouse
namespace ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean

structure CosmologicalModelPackage
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} {W : GravitationalWavePackage Geod} where
  homogeneity : Prop
  isotropy : Prop
  expansionScaleFactor : ℝ → ℝ
  perfectFluidStressEnergy : Prop
  friedmannEquations : Prop
  cosmologicalParameters : Prop

structure CosmologicalModelEvidence
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} {W : GravitationalWavePackage Geod}
    (C : CosmologicalModelPackage W) where
  homogeneityClosed : C.homogeneity
  isotropyClosed : C.isotropy
  expansionScaleFactorDefined : C.expansionScaleFactor 0 = 1
  perfectFluidStressEnergyClosed : C.perfectFluidStressEnergy
  friedmannEquationsClosed : C.friedmannEquations
  cosmologicalParametersClosed : C.cosmologicalParameters

def CosmologicalModelClosed
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} {W : GravitationalWavePackage Geod}
    (C : CosmologicalModelPackage W) : Prop :=
  C.homogeneity ∧ C.isotropy ∧ (C.expansionScaleFactor 0 = 1) ∧
  C.perfectFluidStressEnergy ∧ C.friedmannEquations ∧ C.cosmologicalParameters

theorem cosmological_model_closed_from_evidence
    {G : AxiomaticGeometryPackage} {E : EinsteinFieldEquationPackage G}
    {Geod : GeodesicPackage G} {W : GravitationalWavePackage Geod}
    (C : CosmologicalModelPackage W) (Ev : CosmologicalModelEvidence C) :
    CosmologicalModelClosed C := by
  refine And.intro Ev.homogeneityClosed
    (And.intro Ev.isotropyClosed
      (And.intro Ev.expansionScaleFactorDefined
        (And.intro Ev.perfectFluidStressEnergyClosed
          (And.intro Ev.friedmannEquationsClosed Ev.cosmologicalParametersClosed))))

end ClassicalAxiomaticGeometryPhysicsTheoremCanonicalLaneLean
end HautevilleHouse
