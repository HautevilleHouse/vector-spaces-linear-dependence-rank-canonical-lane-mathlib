import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure RankNullityPackage where
  linearMapDomain : Type u
  linearMapCodomain : Type v
  linearMap : Type w
  kernelDefined : Prop
  imageDefined : Prop
  rankDefined : Prop
  nullityDefined : Prop
  rankPlusNullityEqualsDomainDim : Prop

structure RankNullityEvidence (P : RankNullityPackage) where
  kernelDefinedClosed : P.kernelDefined
  imageDefinedClosed : P.imageDefined
  rankDefinedClosed : P.rankDefined
  nullityDefinedClosed : P.nullityDefined
  rankPlusNullityEqualsDomainDimClosed : P.rankPlusNullityEqualsDomainDim

def RankNullityClosed (P : RankNullityPackage) : Prop :=
  P.kernelDefined ∧ P.imageDefined ∧ P.rankDefined ∧ P.nullityDefined ∧ P.rankPlusNullityEqualsDomainDim

theorem rank_nullity_closed_from_evidence (P : RankNullityPackage) (E : RankNullityEvidence P) :
    RankNullityClosed P := by
  exact And.intro E.kernelDefinedClosed
    (And.intro E.imageDefinedClosed
      (And.intro E.rankDefinedClosed
        (And.intro E.nullityDefinedClosed E.rankPlusNullityEqualsDomainDimClosed)))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse