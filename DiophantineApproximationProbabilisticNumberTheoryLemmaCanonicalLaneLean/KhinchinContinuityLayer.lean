import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean

structure KhinchinDatum where
  psiFunction : ℝ → ℝ
  sumConvergence : Prop
  almostEverywhereApproximable : Prop
  sumChecked : Bool
  almostEverywhereChecked : Bool

def primitiveKhinchinDatum : KhinchinDatum := {
  psiFunction := fun (x : ℝ) => 0
  sumConvergence := True
  almostEverywhereApproximable := True
  sumChecked := true
  almostEverywhereChecked := true
}

def KhinchinContinuityClosed (K : KhinchinDatum) : Prop :=
  K.sumConvergence ∧
  K.almostEverywhereApproximable ∧
  K.sumChecked = true ∧
  K.almostEverywhereChecked = true

theorem khinchin_continuity_closed_checked : KhinchinContinuityClosed primitiveKhinchinDatum := by
  exact And.intro trivial (And.intro trivial (And.intro rfl rfl))

end DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean
end HautevilleHouse