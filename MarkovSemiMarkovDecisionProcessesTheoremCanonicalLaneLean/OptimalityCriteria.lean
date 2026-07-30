import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure OptimalityCriteria (S : PrimitiveStateSpace) (A : PrimitiveActionSpace S) (T : PrimitiveTimeDomain) (K : SemiMarkovKernelExtension S A T) where
  policy : (S.State × T.Time) -> A.Action s
  expectedTotalReward : ℝ
  optimal : Prop
  bellmanOptimality : Prop
  valueFunction : S.State -> ℝ

structure OptimalityEvidence {S : PrimitiveStateSpace} {A : PrimitiveActionSpace S} {T : PrimitiveTimeDomain} {K : SemiMarkovKernelExtension S A T} (O : OptimalityCriteria S A T K) where
  optimalClosed : O.optimal
  bellmanOptimalityClosed : O.bellmanOptimality
  valueFunctionClosed : ∀ s, O.valueFunction s = ...

def OptimalityClosed {S : PrimitiveStateSpace} {A : PrimitiveActionSpace S} {T : PrimitiveTimeDomain} {K : SemiMarkovKernelExtension S A T} (O : OptimalityCriteria S A T K) : Prop :=
  O.optimal ∧ O.bellmanOptimality

theorem optimality_closed_from_evidence {S : PrimitiveStateSpace} {A : PrimitiveActionSpace S} {T : PrimitiveTimeDomain} {K : SemiMarkovKernelExtension S A T} (O : OptimalityCriteria S A T K) (E : OptimalityEvidence O) : OptimalityClosed O :=
  And.intro E.optimalClosed E.bellmanOptimalityClosed

end HautevilleHouse
end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean