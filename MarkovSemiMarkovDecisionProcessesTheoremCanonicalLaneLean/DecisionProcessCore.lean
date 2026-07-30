import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure MarkovDecisionProcessCore where
  stateSpace : Type u
  actionSpace : Type v
  transitionKernel : stateSpace → actionSpace → stateSpace → ℝ
  rewardFunction : stateSpace → actionSpace → ℝ
  horizon : ℕ
  stationarity : Prop

structure SemiMarkovExtension where
  sojournDistribution : stateSpace → actionSpace → ℝ → ℝ
  core : MarkovDecisionProcessCore
  semiMarkovKernel : core.stateSpace → core.actionSpace → ℝ → core.stateSpace → ℝ

structure SemiMarkovKernelConsistency where
  kernel : SemiMarkovExtension
  nonnegative : ∀ s a t s', kernel.semiMarkovKernel s a t s' ≥ 0
  integratesToOne : ∀ s a, ∫ t, (∑ s', kernel.semiMarkovKernel s a t s') ∂ volume = 1

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse