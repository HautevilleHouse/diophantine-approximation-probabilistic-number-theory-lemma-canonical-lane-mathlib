import canonicalLaneMathlib.AdmissibleClass
import DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean.ProbabilisticDiophantineApproximationLemma
import DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean.KhinchinContinuityLayer
import DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean.DuffinSchaefferEndpointLayer

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean

open HautevilleHouse.DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact ⟨A.object.sourceKeyChecked, A.object.theoremObjectChecked, A.object.operatorModelWitness, A.object.spectralPersistenceBridgeWitness, A.object.sourceBoundaryLedgerWitness, A.object.classicalRemainderCarried⟩

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedDiophantineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_diophantine_endgame (A : AdmissibleClass) : ConstrainedDiophantineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean
end HautevilleHouse