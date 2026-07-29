import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure UtilityTheoryPackage where
  consumptionSet : Type u
  preferenceRelation : consumptionSet -> consumptionSet -> Prop
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  localNonSatiation : Prop
  utilityFunction : consumptionSet -> ℝ
  utilityRepresentsPreferences : Prop

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  localNonSatiationClosed : U.localNonSatiation
  utilityRepresentsPreferencesClosed : U.utilityRepresentsPreferences

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.localNonSatiation ∧ U.utilityRepresentsPreferences

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage) (E : UtilityTheoryEvidence U) :
    UtilityTheoryClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed
    (And.intro E.continuityClosed (And.intro E.localNonSatiationClosed E.utilityRepresentsPreferencesClosed)))

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse