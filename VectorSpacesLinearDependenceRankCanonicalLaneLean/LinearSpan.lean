import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure LinearSpanPackage where
  vectorSpace : Type u
  field : Type v
  subset : Set (vectorSpace)
  spanDefined : Type u
  spanIsSubspace : Prop
  spanContainsSubset : Prop
  spanMinimal : Prop
  spanClosedUnderOps : Prop

structure LinearSpanEvidence (P : LinearSpanPackage) where
  spanIsSubspaceClosed : P.spanIsSubspace
  spanContainsSubsetClosed : P.spanContainsSubset
  spanMinimalClosed : P.spanMinimal
  spanClosedUnderOpsClosed : P.spanClosedUnderOps

def LinearSpanClosed (P : LinearSpanPackage) : Prop :=
  P.spanIsSubspace ∧ P.spanContainsSubset ∧ P.spanMinimal ∧ P.spanClosedUnderOps

theorem linear_span_closed_from_evidence (P : LinearSpanPackage) (E : LinearSpanEvidence P) :
    LinearSpanClosed P := by
  exact And.intro E.spanIsSubspaceClosed
    (And.intro E.spanContainsSubsetClosed
      (And.intro E.spanMinimalClosed E.spanClosedUnderOpsClosed))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse