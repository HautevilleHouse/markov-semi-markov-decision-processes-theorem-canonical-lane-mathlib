import canonicalLaneMathlib.SMDPModel

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure SMDPModel (M : MDPModel) where
  sojournDistribution : M.stateSpace → M.actionSpace → ℝ → ℝ
  transitionWithTime : M.stateSpace → M.actionSpace → ℝ → M.stateSpace → ℝ

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse