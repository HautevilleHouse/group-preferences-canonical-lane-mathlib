import GroupPreferencesCanonicalLaneLean.PreferenceRelation

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure DomainRestriction (A : Type) where
  allowedProfiles : (A -> A -> Prop) -> Prop
  unrestrictedDomain : Prop
  singlePeaked : Prop
  singleCrossing : Prop
  euclideanPreferences : Prop

structure DomainEvidence (Dom : DomainRestriction A) where
  unrestrictedDomainClosed : Dom.unrestrictedDomain
  singlePeakedClosed : Dom.singlePeaked
  singleCrossingClosed : Dom.singleCrossing
  euclideanPreferencesClosed : Dom.euclideanPreferences

def DomainClosed (Dom : DomainRestriction A) : Prop :=
  Dom.unrestrictedDomain ∧ Dom.singlePeaked ∧ Dom.singleCrossing ∧ Dom.euclideanPreferences

theorem domain_closed_from_evidence (Dom : DomainRestriction A) (E : DomainEvidence Dom) :
    DomainClosed Dom := by
  exact And.intro E.unrestrictedDomainClosed
    (And.intro E.singlePeakedClosed
      (And.intro E.singleCrossingClosed E.euclideanPreferencesClosed))

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse