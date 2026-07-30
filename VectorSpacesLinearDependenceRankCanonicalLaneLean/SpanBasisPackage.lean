import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure SpanBasisPackage (V : AdmittedVectorSpace) where
  generatingSet : List V.carrier
  spanCondition : Prop
  linearIndependence : Prop
  basisEkvivalence : Prop

structure SpanBasisEvidence {V : AdmittedVectorSpace} (S : SpanBasisPackage V) where
  spanConditionClosed : S.spanCondition
  linearIndependenceClosed : S.linearIndependence
  basisEkvivalenceClosed : S.basisEkvivalence

def SpanBasisClosed {V : AdmittedVectorSpace} (S : SpanBasisPackage V) : Prop :=
  S.spanCondition ∧ S.linearIndependence ∧ S.basisEkvivalence

theorem span_basis_closed_from_evidence
    {V : AdmittedVectorSpace} (S : SpanBasisPackage V)
    (E : SpanBasisEvidence S) : SpanBasisClosed S := by
  exact And.intro E.spanConditionClosed
    (And.intro E.linearIndependenceClosed E.basisEkvivalenceClosed)

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse