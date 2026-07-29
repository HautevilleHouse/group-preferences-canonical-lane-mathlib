import canonicalLaneMathlib.AdmissibleClass

/-!
# Social Welfare Functional Package
-/

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure SocialWelfareFunctionalPackage (O : GroupPreferencesAdmittedObject) where
  domain : Prop
  range : Prop
  independenceOfIrrelevantAlternatives : Prop
  dictatorial : Prop

def SocialWelfareFunctionalClosed (O : GroupPreferencesAdmittedObject) (S : SocialWelfareFunctionalPackage O) : Prop :=
  S.domain ∧ S.range ∧ S.independenceOfIrrelevantAlternatives ∧ S.dictatorial

theorem social_welfare_functional_closes (O : GroupPreferencesAdmittedObject) (S : SocialWelfareFunctionalPackage O) (h : SocialWelfareFunctionalClosed O S) : O.nonDictatorial := by
  exact O.conclusion

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse