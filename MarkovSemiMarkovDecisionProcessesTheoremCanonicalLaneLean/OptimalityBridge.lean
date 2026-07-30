import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure OptimalityCriterion where
  valueFunction : (stateSpace : Type u) → (actionSpace : Type v) → (stateSpace → ℝ)
  optimalPolicy : (stateSpace : Type u) → (actionSpace : Type v) → (stateSpace → actionSpace)

structure BellmanOptimality where
  criterion : OptimalityCriterion
  satisfiesBellmanEquation : Prop
  proof : satisfiesBellmanEquation

structure BridgeClosed (A : AdmissibleClass) : Prop :=
  optimality : BellmanOptimality
  consistency : SemiMarkovKernelConsistency

theorem bridge_from_admissible_class (A : AdmissibleClass) : BridgeClosed A := by
  exact { optimality := A.object.optimality, consistency := A.object.consistency }

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse