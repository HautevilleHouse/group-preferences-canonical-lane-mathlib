import GroupPreferencesCanonicalLaneLean.PreferencesDomain

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure DictatorshipEliminationPackage {A : Type} {N : Type} (Dom : DomainRestriction A) where
  nondictatorialRule : SocialChoiceFunction A N
  unrestrictedDomainSatisfied : Prop
  dominanceAxiom : Prop
  excludedDictator : Prop

structure DictatorshipEliminationEvidence {A : Type} {N : Type} {Dom : DomainRestriction A}
    (D : DictatorshipEliminationPackage Dom) where
  unrestrictedDomainSatisfiedClosed : D.unrestrictedDomainSatisfied
  dominanceAxiomClosed : D.dominanceAxiom
  excludedDictatorClosed : D.excludedDictator

def DictatorshipEliminationClosed {A : Type} {N : Type} {Dom : DomainRestriction A}
    (D : DictatorshipEliminationPackage Dom) : Prop :=
  D.unrestrictedDomainSatisfied ∧ D.dominanceAxiom ∧ D.excludedDictator

theorem dictatorship_elimination_closed_from_evidence {A : Type} {N : Type} {Dom : DomainRestriction A}
    (D : DictatorshipEliminationPackage Dom) (E : DictatorshipEliminationEvidence D) :
    DictatorshipEliminationClosed D := by
  exact And.intro E.unrestrictedDomainSatisfiedClosed
    (And.intro E.dominanceAxiomClosed E.excludedDictatorClosed)

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse