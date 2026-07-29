import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure UpstreamMathlibSubstrate where
  operatorCarrier : Type
  spectralSet : Prop
  invariantOrSelfAdjointGate : Prop
  spectralPersistenceBridge : Prop
  sourceBoundaryLedger : Set String

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  substrate : UpstreamMathlibSubstrate
  localWitness : String
  bridgeEvidence : String
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : Prop
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

def sourceRepository : String := "diophantine_approximation_probabilistic_number_theory_lemma"
def sourceDescription : String := "Diophantine Approximation Probabilistic Number Theory Lemma"

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := "The lemma holds for all irrational numbers."
}

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.operatorModelChecked ∧
  O.spectralPersistenceBridgeChecked ∧
  O.sourceBoundaryLedgerChecked ∧
  O.classicalRemainderCarried

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O

end DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean
end HautevilleHouse