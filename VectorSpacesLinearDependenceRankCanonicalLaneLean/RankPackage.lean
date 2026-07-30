import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure RankPackage (V : AdmittedVectorSpace) where
  rank : Nat
  basisExists : Prop
  dimensionWellDefined : Prop
  rankNullityTheorem : Prop

structure RankEvidence {V : AdmittedVectorSpace} (R : RankPackage V) where
  rankClosed : R.rank = R.rank
  basisExistsClosed : R.basisExists
  dimensionWellDefinedClosed : R.dimensionWellDefined
  rankNullityTheoremClosed : R.rankNullityTheorem

def RankClosed {V : AdmittedVectorSpace} (R : RankPackage V) : Prop :=
  R.rank = R.rank ∧ R.basisExists ∧ R.dimensionWellDefined ∧ R.rankNullityTheorem

theorem rank_closed_from_evidence
    {V : AdmittedVectorSpace} (R : RankPackage V)
    (E : RankEvidence R) : RankClosed R := by
  exact And.intro E.rankClosed
    (And.intro E.basisExistsClosed
      (And.intro E.dimensionWellDefinedClosed
        E.rankNullityTheoremClosed))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse