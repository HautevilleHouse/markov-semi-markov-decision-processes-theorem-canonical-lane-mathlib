import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure SemiMarkovKernelExtension (S : PrimitiveStateSpace) (A : PrimitiveActionSpace S) (T : PrimitiveTimeDomain) where
  baseKernel : PrimitiveTransitionKernel S A
  sojournDistribution : S.State -> A.Action s -> S.State -> T.Time -> ℝ
  markovProperty : forall s a s' t, ...
  semiMarkovProperty : forall s a s' t, ...

structure SemiMarkovKernelEvidence {S : PrimitiveStateSpace} {A : PrimitiveActionSpace S} {T : PrimitiveTimeDomain} (K : SemiMarkovKernelExtension S A T) where
  baseKernelClosed : PrimitiveTransitionKernelClosed K.baseKernel
  sojournMeasurable : Measurable K.sojournDistribution
  markovPropertyClosed : K.markovProperty
  semiMarkovPropertyClosed : K.semiMarkovProperty

def SemiMarkovKernelClosed {S : PrimitiveStateSpace} {A : PrimitiveActionSpace S} {T : PrimitiveTimeDomain} (K : SemiMarkovKernelExtension S A T) : Prop :=
  PrimitiveTransitionKernelClosed K.baseKernel ∧
  K.markovProperty ∧
  K.semiMarkovProperty

theorem semi_markov_kernel_closed_from_evidence {S : PrimitiveStateSpace} {A : PrimitiveActionSpace S} {T : PrimitiveTimeDomain} (K : SemiMarkovKernelExtension S A T) (E : SemiMarkovKernelEvidence K) : SemiMarkovKernelClosed K :=
  And.intro E.baseKernelClosed (And.intro E.markovPropertyClosed E.semiMarkovPropertyClosed)

end HautevilleHouse
end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean