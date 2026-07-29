import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure ArrowImpossibilityPackage {IC : IndividualConsistencyPackage}
    {SWF : SocialWelfareFunctionPackage IC} where
  unrestrictedDomain : Prop
  paretoEfficiency : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop
  impossibilityConclusion : Prop

structure ArrowImpossibilityEvidence {IC : IndividualConsistencyPackage}
    {SWF : SocialWelfareFunctionPackage IC}
    (A : ArrowImpossibilityPackage) where
  unrestrictedDomainClosed : A.unrestrictedDomain
  paretoEfficiencyClosed : A.paretoEfficiency
  independenceOfIrrelevantAlternativesClosed : A.independenceOfIrrelevantAlternatives
  nonDictatorshipClosed : A.nonDictatorship
  impossibilityConclusionClosed : A.impossibilityConclusion

def ArrowImpossibilityClosed {IC : IndividualConsistencyPackage}
    {SWF : SocialWelfareFunctionPackage IC}
    (A : ArrowImpossibilityPackage) : Prop :=
  A.unrestrictedDomain ∧ A.paretoEfficiency ∧
  A.independenceOfIrrelevantAlternatives ∧ A.nonDictatorship ∧
  A.impossibilityConclusion

theorem arrow_impossibility_closed_from_evidence
    {IC : IndividualConsistencyPackage} {SWF : SocialWelfareFunctionPackage IC}
    (A : ArrowImpossibilityPackage) (E : ArrowImpossibilityEvidence A) :
    ArrowImpossibilityClosed A := by
  exact And.intro E.unrestrictedDomainClosed
    (And.intro E.paretoEfficiencyClosed
      (And.intro E.independenceOfIrrelevantAlternativesClosed
        (And.intro E.nonDictatorshipClosed E.impossibilityConclusionClosed)))

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse