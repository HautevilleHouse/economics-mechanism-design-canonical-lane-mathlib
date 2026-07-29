import EconomicsMechanismDesignCanonicalLaneLean.AdmissibleClass
import Mathlib.Data.Set.Basic

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure UtilityPackage where
  preferenceRelation : Prop
  continuity : Prop
  monotonicity : Prop
  convexity : Prop
  utilityFunctionExists : Prop
  representationTheorem : Prop

structure UtilityEvidence (P : UtilityPackage) where
  preferenceRelationClosed : P.preferenceRelation
  continuityClosed : P.continuity
  monotonicityClosed : P.monotonicity
  convexityClosed : P.convexity
  utilityFunctionExistsClosed : P.utilityFunctionExists
  representationTheoremClosed : P.representationTheorem

def UtilityClosed (P : UtilityPackage) : Prop :=
  P.preferenceRelation ∧ P.continuity ∧
  P.monotonicity ∧ P.convexity ∧
  P.utilityFunctionExists ∧ P.representationTheorem

theorem utility_closed_from_evidence (P : UtilityPackage)
    (E : UtilityEvidence P) : UtilityClosed P :=
by
  exact And.intro E.preferenceRelationClosed
    (And.intro E.continuityClosed
      (And.intro E.monotonicityClosed
        (And.intro E.convexityClosed
          (And.intro E.utilityFunctionExistsClosed
            E.representationTheoremClosed))))

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse
