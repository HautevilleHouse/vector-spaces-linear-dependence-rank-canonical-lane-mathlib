import canonicalLaneMathlib.AdmissibleClass
import Mathlib.LinearAlgebra.Finrank

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure RankTheoryPackage (V : VectorSpace) where
  rank : ℕ
  rankDefined : Prop
  rankInvariantUnderBasis : Prop
  rankNullityTheorem : Prop
  rankMatrixFactorization : Prop

structure RankTheoryEvidence (V : VectorSpace) (R : RankTheoryPackage V) where
  rankDefinedClosed : R.rankDefined
  rankInvariantUnderBasisClosed : R.rankInvariantUnderBasis
  rankNullityTheoremClosed : R.rankNullityTheorem
  rankMatrixFactorizationClosed : R.rankMatrixFactorization

def RankTheoryClosed (V : VectorSpace) (R : RankTheoryPackage V) : Prop :=
  R.rankDefined ∧ R.rankInvariantUnderBasis ∧ R.rankNullityTheorem ∧ R.rankMatrixFactorization

theorem rank_theory_closed_from_evidence (V : VectorSpace) (R : RankTheoryPackage V) (E : RankTheoryEvidence V R) :
    RankTheoryClosed V R := by
  exact And.intro E.rankDefinedClosed
    (And.intro E.rankInvariantUnderBasisClosed
      (And.intro E.rankNullityTheoremClosed E.rankMatrixFactorizationClosed))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse