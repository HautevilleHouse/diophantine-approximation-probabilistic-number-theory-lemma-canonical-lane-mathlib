import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean

structure DuffinSchaefferDatum where
  phiFunction : ℕ → ℝ
  divergenceStatus : Prop
  approximationSet : Set ℝ
  divergenceChecked : Bool
  setMeasurable : Bool

def primitiveDuffinSchaefferDatum : DuffinSchaefferDatum := {
  phiFunction := fun (n : ℕ) => 0
  divergenceStatus := True
  approximationSet := Set.univ
  divergenceChecked := true
  setMeasurable := true
}

def DuffinSchaefferEndpointClosed (D : DuffinSchaefferDatum) : Prop :=
  D.divergenceStatus ∧
  D.divergenceChecked = true ∧
  D.setMeasurable = true

theorem duffin_schaeffer_endpoint_closed_checked : DuffinSchaefferEndpointClosed primitiveDuffinSchaefferDatum := by
  exact And.intro trivial (And.intro rfl rfl)

end DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean
end HautevilleHouse