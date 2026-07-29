import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure GroupPreferenceObject where
  group : Type u
  relation : group → group → Prop
  transitivity : Prop
  completeness : Prop
  strictness : Prop
  conclusion : transitivity ∧ completeness ∧ strictness

def GroupPreferenceClosed (O : GroupPreferenceObject) : Prop :=
  O.transitivity ∧ O.completeness ∧ O.strictness

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse