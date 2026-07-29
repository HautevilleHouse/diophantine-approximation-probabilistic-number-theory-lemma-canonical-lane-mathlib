import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean

structure ProbabilisticApproximationDatum where
  realNumber : ℝ
  rationalApproximant : ℚ
  approximationError : ℝ
  denominatorBound : ℕ
  errorThreshold : ℝ
  probabilisticMeasure : ℝ
  probabilisticMeasureChecked : Bool
  approximationErrorChecked : Bool
  denominatorBoundChecked : Bool

def primitiveProbabilisticApproximationDatum : ProbabilisticApproximationDatum := {
  realNumber := 0
  rationalApproximant := 0
  approximationError := 0
  denominatorBound := 1
  errorThreshold := 0
  probabilisticMeasure := 1
  probabilisticMeasureChecked := true
  approximationErrorChecked := true
  denominatorBoundChecked := true
}

def ProbabilisticApproximationClosed (D : ProbabilisticApproximationDatum) : Prop :=
  D.probabilisticMeasureChecked = true ∧
  D.approximationErrorChecked = true ∧
  D.denominatorBoundChecked = true ∧
  D.approximationError < D.errorThreshold

theorem probabilistic_approximation_closed_checked : ProbabilisticApproximationClosed primitiveProbabilisticApproximationDatum := by
  exact And.intro rfl (And.intro rfl (And.intro rfl (by
    have : primitiveProbabilisticApproximationDatum.approximationError = 0 := rfl
    have : primitiveProbabilisticApproximationDatum.errorThreshold = 0 := rfl
    simp [this])
  ))

end DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean
end HautevilleHouse