import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

/-!
# Semi-Markov Decision Process Package

This module defines the core structure for a semi-Markov decision process (SMDP).
An SMDP generalizes a Markov decision process by allowing state transitions to take
random amounts of time, governed by a joint distribution over next state and sojourn time.
-/

structure SemiMarkovDecisionProcess (S : Type u) (A : Type v) where
  stateSpace : S
  actionSpace : A
  sojournTimeDistribution : S → A → S → ℝ → ℝ
  rewardRate : S → A → ℝ
  discountFactor : ℝ

structure SemiMarkovDecisionProcessEvidence (S : Type u) (A : Type v) (smdp : SemiMarkovDecisionProcess S A) where
  sojournTimeDistributionsValid : Prop
  rewardRateBounded : Prop
  discountFactorInUnitInterval : smdp.discountFactor > 0 ∧ smdp.discountFactor < 1
  discountFactorInUnitIntervalClosed : discountFactorInUnitInterval

def SemiMarkovDecisionProcessClosed (S : Type u) (A : Type v) (smdp : SemiMarkovDecisionProcess S A) : Prop :=
  smdp.sojournTimeDistribution ∈ (S → A → S → ℝ → ℝ) ∧
  smdp.rewardRate ∈ (S → A → ℝ) ∧
  smdp.discountFactor > 0 ∧ smdp.discountFactor < 1

theorem smdp_closed_from_evidence
    (S : Type u) (A : Type v) (smdp : SemiMarkovDecisionProcess S A)
    (E : SemiMarkovDecisionProcessEvidence S A smdp) :
    SemiMarkovDecisionProcessClosed S A smdp := by
  exact And.intro (by trivial)
    (And.intro (by trivial)
      E.discountFactorInUnitIntervalClosed)

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse