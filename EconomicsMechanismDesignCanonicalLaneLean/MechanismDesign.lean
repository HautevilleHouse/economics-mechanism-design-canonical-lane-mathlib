import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure MechanismDesignPackage where
  agentSet : Type u
  typeSpace : agentSet -> Type v
  outcomeSet : Type w
  allocationRule : (Π i : agentSet, typeSpace i) -> outcomeSet
  transferRule : (Π i : agentSet, typeSpace i) -> agentSet -> ℝ
  incentiveCompatibility : Prop
  individualRationality : Prop
  efficiency : Prop

structure MechanismDesignEvidence (M : MechanismDesignPackage) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  individualRationalityClosed : M.individualRationality
  efficiencyClosed : M.efficiency

def MechanismDesignClosed (M : MechanismDesignPackage) : Prop :=
  M.incentiveCompatibility ∧ M.individualRationality ∧ M.efficiency

theorem mechanism_design_closed_from_evidence (M : MechanismDesignPackage) (E : MechanismDesignEvidence M) :
    MechanismDesignClosed M := by
  exact And.intro E.incentiveCompatibilityClosed (And.intro E.individualRationalityClosed E.efficiencyClosed)

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse