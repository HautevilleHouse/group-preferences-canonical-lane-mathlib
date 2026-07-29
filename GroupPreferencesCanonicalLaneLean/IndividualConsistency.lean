import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure IndividualConsistencyPackage where
  rationalAgent : Type u
  preferenceRelation : rationalAgent → rationalAgent → Prop
  completeness : Prop
  transitivity : Prop
  antisymmetry : Prop
  reflexive : Prop

structure IndividualConsistencyEvidence (IC : IndividualConsistencyPackage) where
  completenessClosed : IC.completeness
  transitivityClosed : IC.transitivity
  antisymmetryClosed : IC.antisymmetry
  reflexiveClosed : IC.reflexive

def IndividualConsistencyClosed (IC : IndividualConsistencyPackage) : Prop :=
  IC.completeness ∧ IC.transitivity ∧ IC.antisymmetry ∧ IC.reflexive

theorem individual_consistency_closed_from_evidence
    (IC : IndividualConsistencyPackage) (E : IndividualConsistencyEvidence IC) :
    IndividualConsistencyClosed IC := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.antisymmetryClosed E.reflexiveClosed))

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse