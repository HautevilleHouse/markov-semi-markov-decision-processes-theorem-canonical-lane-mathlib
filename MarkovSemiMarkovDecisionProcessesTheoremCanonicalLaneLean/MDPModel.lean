import canonicalLaneMathlib.MDPModel

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure MDPModel where
  stateSpace : Type u
  actionSpace : Type v
  transition : stateSpace → actionSpace → stateSpace → ℝ
  reward : stateSpace → actionSpace → ℝ
  discount : ℝ

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse