import canonicalLaneMathlib.AdmissibleClass

/-!
# Policy Space Package for Markov Semi-Markov Decision Processes
-/

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure PolicySpacePackage where
  policyType : Type u
  admissibilityCondition : Prop
  stationarityCondition : Prop

def PolicySpaceClosed (P : PolicySpacePackage) : Prop :=
  P.admissibilityCondition ∧ P.stationarityCondition

end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean
end HautevilleHouse