import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure AdmissibleClass where
  object : GroupPreferencesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroupPreferencesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse