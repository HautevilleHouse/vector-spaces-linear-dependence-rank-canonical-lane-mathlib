import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure SteinitzExchangePackage where
  vectorSpace : VectorSpaceAdmittedObject
  independentSet : Set (vectorSpace.carrier)
  spanningSet : Set (vectorSpace.carrier)
  independentCardLeSpanningCard : Prop
  exchangeProperty : Prop
  exchangeUsed : Prop

structure SteinitzExchangeEvidence (S : SteinitzExchangePackage) where
  independentCardLeSpanningCardClosed : S.independentCardLeSpanningCard
  exchangePropertyClosed : S.exchangeProperty
  exchangeUsedClosed : S.exchangeUsed

def SteinitzExchangeClosed (S : SteinitzExchangePackage) : Prop :=
  S.independentCardLeSpanningCard ∧ S.exchangeProperty ∧ S.exchangeUsed

theorem steinitz_exchange_closed_from_evidence (S : SteinitzExchangePackage)
    (E : SteinitzExchangeEvidence S) : SteinitzExchangeClosed S := by
  exact And.intro E.independentCardLeSpanningCardClosed
    (And.intro E.exchangePropertyClosed E.exchangeUsedClosed)

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse