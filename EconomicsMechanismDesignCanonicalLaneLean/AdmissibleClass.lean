import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsMechanismDesignCanonicalLaneLean

structure EconomicsAdmittedObject where
  modelType : String
  equilibriumConcept : Prop
  welfareProperties : Prop
  conclusion : equilibriumConcept ∧ welfareProperties

structure AdmissibleClass where
  object : EconomicsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsMechanismDesignCanonicalLaneLean
end HautevilleHouse