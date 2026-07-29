import GroupPreferencesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

def bridgeClosed (A : GroupPreferencesAdmissibleClass) : Prop :=
  GroupPreferencesWitnessClosed A.object

theorem bridge_from_admissible_class (A : GroupPreferencesAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse