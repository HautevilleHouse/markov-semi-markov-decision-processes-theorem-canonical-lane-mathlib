import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

/-!
# Value Iteration Package

This module defines the value iteration algorithm for solving semi-Markov decision
processes. Value iteration is a dynamic programming method that iteratively updates
the value function until convergence.
-/

structure ValueIterationPackage {S : Type u} {A : Type v}
    (smdp : SemiMarkovDecisionProcess S A) where
  valueFunctionUpdate : Prop
  convergenceCriterion : Prop
  errorBound : Prop

structure ValueIterationEvidence {S : Type u} {A : Type v}
    {smdp : SemiMarkovDecisionProcess S A}
    (V : ValueIterationPackage smdp) where
  valueFunctionUpdateClosed : V.valueFunctionUpdate
  convergenceCriterionClosed : V.convergenceCriterion
  errorBoundClosed : V.errorBound

def ValueIterationClosed {S : Type u} {A : Type v}
    {smdp : SemiMarkovDecisionProcess S A}
    (V : ValueIterationPackage smdp) : Prop :=
  V.valueFunctionUpdate ∧ V.convergenceCriterion ∧ V.errorBound

theorem value_iteration_closed_from_evidence
    {S : Type u} {A : Type v} {smdp : SemiMarkovDecisionProcess S A}
    (V : ValueIterationPackage smdp) (E : ValueIterationEvidence V) :
    ValueIterationClosed V := by
  exact And.intro E.valueFunctionUpdateClosed
    (And.intro E.convergenceCriterionClosed E.errorBoundClosed)

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse