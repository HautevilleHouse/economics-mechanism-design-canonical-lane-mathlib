import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure AssetPricingPackage where
  stateSpace : Type u
  assetSet : Type v
  priceProcess : assetSet -> stateSpace -> ℝ
  stochasticDiscountFactor : stateSpace -> ℝ
  noArbitrage : Prop
  riskNeutralMeasure : Prop
  assetPricingFormula : Prop

structure AssetPricingEvidence (A : AssetPricingPackage) where
  noArbitrageClosed : A.noArbitrage
  riskNeutralMeasureClosed : A.riskNeutralMeasure
  assetPricingFormulaClosed : A.assetPricingFormula

def AssetPricingClosed (A : AssetPricingPackage) : Prop :=
  A.noArbitrage ∧ A.riskNeutralMeasure ∧ A.assetPricingFormula

theorem asset_pricing_closed_from_evidence (A : AssetPricingPackage) (E : AssetPricingEvidence A) :
    AssetPricingClosed A := by
  exact And.intro E.noArbitrageClosed (And.intro E.riskNeutralMeasureClosed E.assetPricingFormulaClosed)

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse