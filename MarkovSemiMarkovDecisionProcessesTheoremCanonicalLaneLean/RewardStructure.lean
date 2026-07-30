import canonicalLaneMathlib.AdmissibleClass

/-!
# Reward Structure Package for Markov Semi-Markov Decision Processes
-/

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure RewardStructurePackage where
  rewardFunction : Type u
  boundednessCondition : Prop
  measurabilityCondition : Prop

def RewardStructureClosed (R : RewardStructurePackage) : Prop :=
  R.boundednessCondition ∧ R.measurabilityCondition

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse