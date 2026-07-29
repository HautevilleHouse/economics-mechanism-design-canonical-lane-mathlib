import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsMechanismDesignCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure GeneralEquilibriumPackage (A : ArrowDebreuEquilibriumPackage) where
  welfareTheorems : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  coreEquivalence : Prop
  equilibriumAndPareto : Prop

structure GeneralEquilibriumEvidence {A : ArrowDebreuEquilibriumPackage} (G : GeneralEquilibriumPackage A) where
  firstWelfareTheoremClosed : G.firstWelfareTheorem
  secondWelfareTheoremClosed : G.secondWelfareTheorem
  coreEquivalenceClosed : G.coreEquivalence
  equilibriumAndParetoClosed : G.equilibriumAndPareto

def GeneralEquilibriumClosed {A : ArrowDebreuEquilibriumPackage} (G : GeneralEquilibriumPackage A) : Prop :=
  G.firstWelfareTheorem ∧ G.secondWelfareTheorem ∧ G.coreEquivalence ∧ G.equilibriumAndPareto

theorem general_equilibrium_closed_from_evidence {A : ArrowDebreuEquilibriumPackage}
    (G : GeneralEquilibriumPackage A) (E : GeneralEquilibriumEvidence G) :
    GeneralEquilibriumClosed G := by
  exact And.intro E.firstWelfareTheoremClosed (And.intro E.secondWelfareTheoremClosed
    (And.intro E.coreEquivalenceClosed E.equilibriumAndParetoClosed))

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse