import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure PolicyIteration (S : PrimitiveStateSpace) (A : PrimitiveActionSpace S) (T : PrimitiveTimeDomain) (K : SemiMarkovKernelExtension S A T) where
  initialPolicy : (S.State × T.Time) -> A.Action s
  evaluationStep : (S.State × T.Time) -> ℝ
  improvementStep : (S.State × T.Time) -> A.Action s
  convergence : Prop

structure ValueIteration (S : PrimitiveStateSpace) (A : PrimitiveActionSpace S) (T : PrimitiveTimeDomain) (K : SemiMarkovKernelExtension S A T) where
  initialValue : S.State -> ℝ
  updateOperator : (S.State -> ℝ) -> (S.State -> ℝ)
  convergence : Prop
  fixedPoint : Prop

structure DynamicProgrammingEvidence (P : PolicyIteration S A T K) (V : ValueIteration S A T K) where
  policyConvergenceClosed : P.convergence
  valueConvergenceClosed : V.convergence
  fixedPointClosed : V.fixedPoint

def DynamicProgrammingClosed (P : PolicyIteration S A T K) (V : ValueIteration S A T K) : Prop :=
  P.convergence ∧ V.convergence ∧ V.fixedPoint

theorem dynamic_programming_closed_from_evidence (P : PolicyIteration S A T K) (V : ValueIteration S A T K) (E : DynamicProgrammingEvidence P V) : DynamicProgrammingClosed P V :=
  And.intro E.policyConvergenceClosed (And.intro E.valueConvergenceClosed E.fixedPointClosed)

end HautevilleHouse
end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean