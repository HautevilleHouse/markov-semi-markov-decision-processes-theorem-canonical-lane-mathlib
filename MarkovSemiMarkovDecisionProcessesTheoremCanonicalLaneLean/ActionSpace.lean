import canonicalLaneMathlib.AdmissibleClass

/-!
# Action Space Package for Markov Semi-Markov Decision Processes
-/

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure ActionSpacePackage where
  actionType : Type u
  compactnessCondition : Prop
  measurabilityStructure : Prop

def ActionSpaceClosed (A : ActionSpacePackage) : Prop :=
  A.compactnessCondition ∧ A.measurabilityStructure

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse