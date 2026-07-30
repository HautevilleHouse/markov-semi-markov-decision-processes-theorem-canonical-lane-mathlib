import canonicalLaneMathlib.AdmissibleClass

/-!
# Transition Kernel Package for Markov Semi-Markov Decision Processes
-/

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure TransitionKernelPackage where
  kernelType : Type u
  regularityCondition : Prop
  fellerProperty : Prop

def TransitionKernelClosed (T : TransitionKernelPackage) : Prop :=
  T.regularityCondition ∧ T.fellerProperty

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse