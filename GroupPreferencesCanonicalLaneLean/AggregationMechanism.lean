import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure AggregationMechanism where
  profiles : Type u
  outcome : Type v
  aggregate : profiles → outcome
  unanimity : ∀ p x y, (∀ i, p i x y) → aggregate p x y
  independence : ∀ p q x y, (∀ i, p i x y ↔ q i x y) → (aggregate p x y ↔ aggregate q x y)
  nondictatorship : ¬∃ i : profiles → outcome, ∀ p x y, p i x y → aggregate p x y

def AggregationMechanismClosed (A : AggregationMechanism) : Prop :=
  A.unanimity ∧ A.independence ∧ A.nondictatorship

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse