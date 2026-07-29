import GroupPreferencesCanonicalLaneLean.GibbardSatterthwaite

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure MoulinVetoPackage where
  votingRule : Prop
  vetoPower : Prop
  strategyproof : Prop
  axiomsSatisfied : Prop

structure MoulinVetoEvidence (M : MoulinVetoPackage) where
  axiomsSatisfiedClosed : M.axiomsSatisfied

def MoulinVetoClosed (M : MoulinVetoPackage) : Prop :=
  M.axiomsSatisfied

theorem moulin_veto_closed_from_evidence (M : MoulinVetoPackage) (E : MoulinVetoEvidence M) : MoulinVetoClosed M := by
  exact E.axiomsSatisfiedClosed

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse