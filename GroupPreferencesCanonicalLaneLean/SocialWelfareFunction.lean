import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure SocialWelfareFunction where
  domain : Type u
  codomain : Type v
  f : domain → codomain
  onto : ∀ y : codomain, ∃ x : domain, f x = y
  singleValued : ∀ x y, f x = f y → x = y

def SocialWelfareFunctionClosed (S : SocialWelfareFunction) : Prop :=
  S.onto ∧ S.singleValued

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse