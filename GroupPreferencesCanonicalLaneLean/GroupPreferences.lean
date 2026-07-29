import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure GroupPreferencesPackage where
  agents : Type u
  alternatives : Type v
  preferences : agents → alternatives → alternatives → Prop
  completeness : ∀ a i x y, preferences i x y ∨ preferences i y x
  transitivity : ∀ a i x y z, preferences i x y → preferences i y z → preferences i x z
  nondictatorship : ¬∃ i : agents, ∀ x y : alternatives, preferences i x y → (∀ j, preferences j x y)

def GroupPreferencesClosed (P : GroupPreferencesPackage) : Prop :=
  P.completeness ∧ P.transitivity ∧ P.nondictatorship

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse