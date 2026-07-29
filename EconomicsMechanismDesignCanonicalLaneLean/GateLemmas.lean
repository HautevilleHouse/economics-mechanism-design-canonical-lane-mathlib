import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EconomicsMechanismDesignCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse