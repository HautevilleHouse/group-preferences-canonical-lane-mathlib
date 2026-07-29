import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure GroupPreferencesSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GroupPreferencesAdmittedObject where
  space : GroupPreferencesSpace
  preferencesOrdered : Prop
  aggregatePreferenceExists : Prop
  socialWelfareFunction : Type
  socialWelfareTopology : TopologicalSpace socialWelfareFunction
  nonDictatorial : Prop
  conclusion : nonDictatorial

def GroupPreferencesWitnessClosed (O : GroupPreferencesAdmittedObject) : Prop :=
  O.nonDictatorial

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse