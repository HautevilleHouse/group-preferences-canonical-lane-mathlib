import HautevilleHouse.GroupPreferencesCanonicalLaneLean.ArrowTheorem

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure SocietalPreferenceAggregationPackage (P : GroupPreferenceObject) where
  individuals : Type u
  socialWelfareFunction : (individuals → P.relation) → P.relation
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop

def SocietalPreferenceAggregationClosed {P : GroupPreferenceObject}
    (S : SocietalPreferenceAggregationPackage P) : Prop :=
  S.paretoEfficiency ∧ S.independenceOfIrrelevantAlternatives ∧ S.nonDictatorship

theorem societal_aggregation_closed {P : GroupPreferenceObject}
    (S : SocietalPreferenceAggregationPackage P) : SocietalPreferenceAggregationClosed S := by
  exact And.intro S.paretoEfficiency (And.intro S.independenceOfIrrelevantAlternatives S.nonDictatorship)

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse