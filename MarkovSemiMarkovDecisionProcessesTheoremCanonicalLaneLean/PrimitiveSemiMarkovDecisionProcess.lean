import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean

structure PrimitiveStateSpace where
  State : Type u
  topology : TopologicalSpace State
  measurable : MeasurableSpace State
  borelCompatible : MeasurableSet' = TopologicalSpace.IsTopologicalBasis.isBorel topology

structure PrimitiveActionSpace (S : PrimitiveStateSpace) where
  Action : S.State -> Type v
  actionTopology : forall s, TopologicalSpace (Action s)
  actionMeasurable : forall s, MeasurableSpace (Action s)

structure PrimitiveTimeDomain where
  Time : Type
  le : Time -> Time -> Prop
  hasInitial : Time
  locallyFiniteBreakSet : Prop

structure PrimitiveTransitionKernel (S : PrimitiveStateSpace) (A : PrimitiveActionSpace S) where
  kernel : S.State -> A.Action s -> S.State -> Prop
  measurableInState : Measurable (fun (s : S.State) => kernel s)
  measurableInAction : forall s, Measurable (kernel s)
  probabilityMeasure : forall s a, IsProbabilityMeasure (kernel s a)

structure PrimitiveRewardFunction (S : PrimitiveStateSpace) (A : PrimitiveActionSpace S) where
  reward : S.State -> A.Action s -> S.State -> ℝ
  boundedBelow : ∃ M, ∀ s a s', reward s a s' ≥ M
  measurable : Measurable reward

end HautevilleHouse
end MarkovSemiMarkovDecisionProcessesTheoremCanonicalLaneLean