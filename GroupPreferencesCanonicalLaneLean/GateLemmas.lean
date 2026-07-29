import GroupPreferencesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

def gateClosed (A : GroupPreferencesAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GroupPreferencesAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse