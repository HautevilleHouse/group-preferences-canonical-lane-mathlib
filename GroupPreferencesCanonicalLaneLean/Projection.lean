import GroupPreferencesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure GroupPreferencesEndgameState where
  object : GroupPreferencesAdmittedObject

def GroupPreferencesWitnessClosed (O : GroupPreferencesAdmittedObject) : Prop :=
  O.conclusion

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse