import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorSpacesLinearDependenceRankCanonicalLaneLean.BasisAndRank

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

def ConstrainedRankClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rank_endgame (A : AdmissibleClass) : ConstrainedRankClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse
