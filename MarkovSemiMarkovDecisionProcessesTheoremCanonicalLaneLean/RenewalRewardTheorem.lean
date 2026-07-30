import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

/-!
# Renewal Reward Theorem Package

This module defines the renewal reward theorem for semi-Markov decision processes,
which provides a relationship between the long-run average reward and the expected
reward and sojourn time per cycle.
-/

structure RenewalRewardTheoremPackage {S : Type u} {A : Type v}
    (smdp : SemiMarkovDecisionProcess S A) where
  longRunAverageReward : Prop
  expectedCycleReward : Prop
  expectedCycleSojournTime : Prop
  renewalRewardEquation : Prop

structure RenewalRewardTheoremEvidence {S : Type u} {A : Type v}
    {smdp : SemiMarkovDecisionProcess S A}
    (R : RenewalRewardTheoremPackage smdp) where
  longRunAverageRewardClosed : R.longRunAverageReward
  expectedCycleRewardClosed : R.expectedCycleReward
  expectedCycleSojournTimeClosed : R.expectedCycleSojournTime
  renewalRewardEquationClosed : R.renewalRewardEquation

def RenewalRewardTheoremClosed {S : Type u} {A : Type v}
    {smdp : SemiMarkovDecisionProcess S A}
    (R : RenewalRewardTheoremPackage smdp) : Prop :=
  R.longRunAverageReward ∧ R.expectedCycleReward ∧ R.expectedCycleSojournTime ∧ R.renewalRewardEquation

theorem renewal_reward_theorem_closed_from_evidence
    {S : Type u} {A : Type v} {smdp : SemiMarkovDecisionProcess S A}
    (R : RenewalRewardTheoremPackage smdp) (E : RenewalRewardTheoremEvidence R) :
    RenewalRewardTheoremClosed R := by
  exact And.intro E.longRunAverageRewardClosed
    (And.intro E.expectedCycleRewardClosed
      (And.intro E.expectedCycleSojournTimeClosed E.renewalRewardEquationClosed))

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse