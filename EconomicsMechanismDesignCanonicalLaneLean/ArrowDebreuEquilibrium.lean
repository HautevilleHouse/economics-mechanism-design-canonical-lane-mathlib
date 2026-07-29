import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  consumerSet : Type v
  producerSet : Type w
  priceVector : Type x
  endowments : consumerSet -> commoditySpace
  preferences : consumerSet -> commoditySpace -> Prop
  productionSets : producerSet -> Set commoditySpace
  utilityMaximization : Prop
  profitMaximization : Prop
  marketClearing : Prop
  equilibriumExists : Prop

structure ArrowDebreuEquilibriumEvidence (A : ArrowDebreuEquilibriumPackage) where
  utilityMaximizationClosed : A.utilityMaximization
  profitMaximizationClosed : A.profitMaximization
  marketClearingClosed : A.marketClearing
  equilibriumExistsClosed : A.equilibriumExists

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.utilityMaximization ∧ A.profitMaximization ∧ A.marketClearing ∧ A.equilibriumExists

theorem arrow_debreu_equilibrium_closed_from_evidence (A : ArrowDebreuEquilibriumPackage)
    (E : ArrowDebreuEquilibriumEvidence A) : ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.utilityMaximizationClosed (And.intro E.profitMaximizationClosed
    (And.intro E.marketClearingClosed E.equilibriumExistsClosed))

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse