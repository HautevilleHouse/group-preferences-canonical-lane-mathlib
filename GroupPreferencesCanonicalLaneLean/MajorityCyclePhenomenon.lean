import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure MajorityCyclePhenomenonPackage {IC : IndividualConsistencyPackage}
    (SWF : SocialWelfareFunctionPackage IC) where
  threeAlternatives : Type u
  cyclicMajority : Prop
  noCondorcetWinner : Prop

structure MajorityCyclePhenomenonEvidence {IC : IndividualConsistencyPackage}
    {SWF : SocialWelfareFunctionPackage IC}
    (M : MajorityCyclePhenomenonPackage SWF) where
  cyclicMajorityClosed : M.cyclicMajority
  noCondorcetWinnerClosed : M.noCondorcetWinner

def MajorityCyclePhenomenonClosed {IC : IndividualConsistencyPackage}
    {SWF : SocialWelfareFunctionPackage IC}
    (M : MajorityCyclePhenomenonPackage SWF) : Prop :=
  M.cyclicMajority ∧ M.noCondorcetWinner

theorem majority_cycle_phenomenon_closed_from_evidence
    {IC : IndividualConsistencyPackage} {SWF : SocialWelfareFunctionPackage IC}
    (M : MajorityCyclePhenomenonPackage SWF) (E : MajorityCyclePhenomenonEvidence M) :
    MajorityCyclePhenomenonClosed M := by
  exact And.intro E.cyclicMajorityClosed E.noCondorcetWinnerClosed

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse