import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

def ConstrainedSemiMarkovClosure (A : AdmissibleClass) : Prop :=
  BridgeClosed A ∧ GateClosed A

theorem constrained_semi_markov_endgame (A : AdmissibleClass) :
    ConstrainedSemiMarkovClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse