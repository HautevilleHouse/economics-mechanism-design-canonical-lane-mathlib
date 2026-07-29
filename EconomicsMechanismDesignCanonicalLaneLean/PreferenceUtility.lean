import EconomicsMechanismDesignCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure PreferenceRelation (A : Type) where
  relation : A → A → Prop
  complete : ∀ a b : A, relation a b ∨ relation b a
  transitive : ∀ a b c : A, relation a b → relation b c → relation a c

structure UtilityFunction (A : Type) where
  func : A → ℝ
  represents : PreferenceRelation A → Prop

theorem utility_representation_consistent (A : Type) (u : UtilityFunction A) (pref : PreferenceRelation A) :
  u.represents pref := by
  sorry

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse