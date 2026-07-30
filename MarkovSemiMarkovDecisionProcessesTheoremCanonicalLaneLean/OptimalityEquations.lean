import canonicalLaneMathlib.OptimalityEquations

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure OptimalityEquations (M : MDPModel) (S : SMDPModel M) where
  valueFunction : M.stateSpace → ℝ
  bellmanEquation : Prop
  optimalPolicy : M.stateSpace → M.actionSpace

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse