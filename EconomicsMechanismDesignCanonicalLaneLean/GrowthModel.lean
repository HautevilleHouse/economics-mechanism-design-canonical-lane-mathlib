import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure GrowthModelPackage where
  capitalStock : Type u
  laborSupply : Type v
  productionFunction : capitalStock -> laborSupply -> ℝ
  savingRate : ℝ
  depreciationRate : ℝ
  capitalAccumulation : Prop
  steadyStateExistence : Prop
  convergence : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  capitalAccumulationClosed : G.capitalAccumulation
  steadyStateExistenceClosed : G.steadyStateExistence
  convergenceClosed : G.convergence

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.capitalAccumulation ∧ G.steadyStateExistence ∧ G.convergence

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.capitalAccumulationClosed (And.intro E.steadyStateExistenceClosed E.convergenceClosed)

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse