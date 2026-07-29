import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure PreferenceRelation (A : Type) where
  carrier : A -> A -> Prop
  total : ∀ x y, carrier x y ∨ carrier y x
  transitive : ∀ x y z, carrier x y → carrier y z → carrier x z
  reflexive : ∀ x, carrier x x

structure SocialChoiceFunction (A : Type) (N : Type) where
  profiles : (N -> A -> A -> Prop) -> A -> A -> Prop
  unanimity : Prop
  independenceOfIrrelevantAlternatives : Prop
  nonDictatorship : Prop

structure GroupPreferencesAdmittedObject where
  agents : Type
  alternatives : Type
  profile : PreferenceRelation agents
  socialChoice : SocialChoiceFunction alternatives agents
  domainRestriction : Prop
  conclusion : domainRestriction

structure GroupPreferencesAdmissibleClass where
  object : GroupPreferencesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse