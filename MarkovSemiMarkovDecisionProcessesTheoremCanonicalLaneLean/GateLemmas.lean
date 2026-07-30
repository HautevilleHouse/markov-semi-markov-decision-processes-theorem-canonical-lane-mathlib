import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure GateClosed (A : AdmissibleClass) : Prop where
  endpointSatisfied : A.endpointSatisfied
  remainderRecorded : A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : GateClosed A := by
  rcases A.gateWitness with (h | h)
  · exact { endpointSatisfied := h, remainderRecorded := h }
  · exact { endpointSatisfied := h, remainderRecorded := h }

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse