import GroupPreferencesCanonicalLaneLean.DictatorshipElimination

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure ArrowPackage (A : Type) (N : Type) where
  socialWelfareFunction : SocialChoiceFunction A N
  paretoEfficiency : Prop
  iia : Prop
  domain : Prop
  dictatorshipExists : Prop

structure ArrowEvidence {A : Type} {N : Type} (P : ArrowPackage A N) where
  paretoEfficiencyClosed : P.paretoEfficiency
  iiaClosed : P.iia
  domainClosed : P.domain
  dictatorshipExistsClosed : P.dictatorshipExists

def ArrowClosed {A : Type} {N : Type} (P : ArrowPackage A N) : Prop :=
  P.paretoEfficiency ∧ P.iia ∧ P.domain ∧ P.dictatorshipExists

theorem arrow_closed_from_evidence {A : Type} {N : Type} (P : ArrowPackage A N) (E : ArrowEvidence P) :
    ArrowClosed P := by
  exact And.intro E.paretoEfficiencyClosed
    (And.intro E.iiaClosed
      (And.intro E.domainClosed E.dictatorshipExistsClosed))

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse