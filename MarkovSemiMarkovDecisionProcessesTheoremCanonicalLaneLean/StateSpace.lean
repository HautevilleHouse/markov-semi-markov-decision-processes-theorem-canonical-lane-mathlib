import canonicalLaneMathlib.AdmissibleClass

/-!
# State Space Package for Markov Semi-Markov Decision Processes
-/

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure StateSpacePackage where
  stateType : Type u
  countabilityCondition : Prop
  measurabilityStructure : Prop

def StateSpaceClosed (S : StateSpacePackage) : Prop :=
  S.countabilityCondition ∧ S.measurabilityStructure

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse