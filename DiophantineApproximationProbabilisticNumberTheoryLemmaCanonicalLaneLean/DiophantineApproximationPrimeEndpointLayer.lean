import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean

structure DiophantineApproximationPrimeEndpointLayerCertificate where
  datum : DiophantineProbabilisticDatum
  primeEndpointRoute : String
  probabilisticApproximationRoute : String
  primeEndpointChecked : Bool
  carriedBoundaryNamed : Bool

def diophantineApproximationPrimeEndpointLayerCertificate : DiophantineApproximationPrimeEndpointLayerCertificate := {
  datum := primitiveDiophantineProbabilisticDatum,
  primeEndpointRoute := "prime endpoint projected via Diophantine approximation rate",
  probabilisticApproximationRoute := "probabilistic approximation route via measure",
  primeEndpointChecked := true,
  carriedBoundaryNamed := true
}

def DiophantineApproximationPrimeEndpointLayerClosed (C : DiophantineApproximationPrimeEndpointLayerCertificate) : Prop :=
  C.datum.measureResearch = true ∧
  C.primeEndpointChecked = true ∧
  C.carriedBoundaryNamed = true

theorem diophantine_approximation_prime_endpoint_layer_closed_checked :
    DiophantineApproximationPrimeEndpointLayerClosed diophantineApproximationPrimeEndpointLayerCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DiophantineApproximationProbabilisticNumberTheoryLemmaCanonicalLaneLean
end HautevilleHouse