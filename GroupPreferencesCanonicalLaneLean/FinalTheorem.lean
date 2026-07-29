import canonicalLaneMathlib.AdmissibleClass
import GroupPreferencesCanonicalLaneLean.GroupPreferences
import GroupPreferencesCanonicalLaneLean.SocialWelfareFunction
import GroupPreferencesCanonicalLaneLean.AggregationMechanism

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

def ConstrainedGroupPreferencesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_group_preferences_endgame (A : AdmissibleClass) :
    ConstrainedGroupPreferencesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse