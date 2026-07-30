import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure PolicyPackage (S : StateSpacePackage) (A : ActionSpacePackage S) where
  decisionRule : S.stateType → A.actionType
  measurableDecision : Measurable (decisionRule)
  historyDependent : Prop

structure PolicyEvidence {S : StateSpacePackage} {A : ActionSpacePackage S} (P : PolicyPackage S A) where
  measurableDecisionClosed : Measurable P.decisionRule
  historyDependentClosed : P.historyDependent

def PolicyClosed {S : StateSpacePackage} {A : ActionSpacePackage S} (P : PolicyPackage S A) : Prop :=
  Measurable P.decisionRule ∧ P.historyDependent

theorem policy_closed_from_evidence {S : StateSpacePackage} {A : ActionSpacePackage S} (P : PolicyPackage S A) (E : PolicyEvidence P) : PolicyClosed P := by
  exact And.intro E.measurableDecisionClosed E.historyDependentClosed

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse