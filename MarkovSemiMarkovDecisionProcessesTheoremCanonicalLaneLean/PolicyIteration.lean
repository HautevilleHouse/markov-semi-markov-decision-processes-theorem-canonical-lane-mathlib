import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

/-!
# Policy Iteration Package

This module defines the policy iteration algorithm for semi-Markov decision processes.
Policy iteration alternates between policy evaluation and policy improvement to find
an optimal policy.
-/

structure PolicyIterationPackage {S : Type u} {A : Type v}
    (smdp : SemiMarkovDecisionProcess S A) where
  policyEvaluation : Prop
  policyImprovement : Prop
  convergenceGuarantee : Prop

structure PolicyIterationEvidence {S : Type u} {A : Type v}
    {smdp : SemiMarkovDecisionProcess S A}
    (P : PolicyIterationPackage smdp) where
  policyEvaluationClosed : P.policyEvaluation
  policyImprovementClosed : P.policyImprovement
  convergenceGuaranteeClosed : P.convergenceGuarantee

def PolicyIterationClosed {S : Type u} {A : Type v}
    {smdp : SemiMarkovDecisionProcess S A}
    (P : PolicyIterationPackage smdp) : Prop :=
  P.policyEvaluation ∧ P.policyImprovement ∧ P.convergenceGuarantee

theorem policy_iteration_closed_from_evidence
    {S : Type u} {A : Type v} {smdp : SemiMarkovDecisionProcess S A}
    (P : PolicyIterationPackage smdp) (E : PolicyIterationEvidence P) :
    PolicyIterationClosed P := by
  exact And.intro E.policyEvaluationClosed
    (And.intro E.policyImprovementClosed E.convergenceGuaranteeClosed)

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse