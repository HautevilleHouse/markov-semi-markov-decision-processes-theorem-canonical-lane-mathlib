import canonicalLaneMathlib.AdmissibleClass

/-!
# Optimality Criterion Package for Markov Semi-Markov Decision Processes
-/

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure OptimalityCriterionPackage where
  criterionType : Type u
  existenceCondition : Prop
  uniquenessCondition : Prop

def OptimalityCriterionClosed (O : OptimalityCriterionPackage) : Prop :=
  O.existenceCondition ∧ O.uniquenessCondition

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse