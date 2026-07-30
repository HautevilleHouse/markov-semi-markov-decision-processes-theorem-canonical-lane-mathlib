import canonicalLaneMathlib.ProofArchitecture

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

def markov_semi_markov_decision_processes_proof_route (M : MDPModel) (S : SMDPModel M) (O : OptimalityEquations M S) : Prop :=
  O.bellmanEquation ∧ bridgeClosed (AdmissibleClass.mk (AdmittedObject.mk M S O) True True (Or.inl trivial))

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse