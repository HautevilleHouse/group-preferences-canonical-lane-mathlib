import GroupPreferencesCanonicalLaneLean.ArrowTheorem

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure GibbardSatterthwaitePackage where
  votingRule : Prop
  strategyproof : Prop
  nonDictatorship : Prop
  onto : Prop
  manipulability : Prop

structure GibbardSatterthwaiteEvidence (G : GibbardSatterthwaitePackage) where
  manipulabilityClosed : G.manipulability

def GibbardSatterthwaiteClosed (G : GibbardSatterthwaitePackage) : Prop :=
  G.manipulability

theorem gibbard_satterthwaite_closed_from_evidence (G : GibbardSatterthwaitePackage) (E : GibbardSatterthwaiteEvidence G) : GibbardSatterthwaiteClosed G := by
  exact E.manipulabilityClosed

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse