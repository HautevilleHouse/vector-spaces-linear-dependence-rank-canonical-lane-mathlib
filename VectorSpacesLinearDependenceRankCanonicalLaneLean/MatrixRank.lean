import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure MatrixRankPackage where
  matrixType : Type u
  rows : Nat
  cols : Nat
  rowRankDefined : Prop
  colRankDefined : Prop
  rowRankEqualsColRank : Prop
  rankViaDeterminants : Prop
  rankViaRowEchelon : Prop

structure MatrixRankEvidence (P : MatrixRankPackage) where
  rowRankDefinedClosed : P.rowRankDefined
  colRankDefinedClosed : P.colRankDefined
  rowRankEqualsColRankClosed : P.rowRankEqualsColRank
  rankViaDeterminantsClosed : P.rankViaDeterminants
  rankViaRowEchelonClosed : P.rankViaRowEchelon

def MatrixRankClosed (P : MatrixRankPackage) : Prop :=
  P.rowRankDefined ∧ P.colRankDefined ∧ P.rowRankEqualsColRank ∧ P.rankViaDeterminants ∧ P.rankViaRowEchelon

theorem matrix_rank_closed_from_evidence (P : MatrixRankPackage) (E : MatrixRankEvidence P) :
    MatrixRankClosed P := by
  exact And.intro E.rowRankDefinedClosed
    (And.intro E.colRankDefinedClosed
      (And.intro E.rowRankEqualsColRankClosed
        (And.intro E.rankViaDeterminantsClosed E.rankViaRowEchelonClosed)))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse