import EconomicsMechanismDesignCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure EconomicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EconomicsAdmittedObject where
  space : EconomicsSpace
  agents : Nat
  goods : Nat
  paretoOptimal : Prop
  equilibrium : Prop
  conclusion : equilibrium

def mechanismDesignWitnessClosed (O : EconomicsAdmittedObject) : Prop :=
  O.equilibrium

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse