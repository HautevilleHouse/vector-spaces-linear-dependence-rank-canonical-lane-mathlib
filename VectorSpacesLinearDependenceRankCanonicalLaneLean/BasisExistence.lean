import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure BasisExistencePackage where
  vectorSpace : VectorSpaceAdmittedObject
  maximalIndependentSet : Set (vectorSpace.carrier)
  spansSpace : Prop
  linearlyIndependent : Prop
  basisConstructed : Prop

structure BasisExistenceEvidence (B : BasisExistencePackage) where
  maximalIndependentSetClosed : B.maximalIndependentSet
  spansSpaceClosed : B.spansSpace
  linearlyIndependentClosed : B.linearlyIndependent
  basisConstructedClosed : B.basisConstructed

def BasisExistenceClosed (B : BasisExistencePackage) : Prop :=
  B.maximalIndependentSet ∧ B.spansSpace ∧ B.linearlyIndependent ∧ B.basisConstructed

theorem basis_existence_closed_from_evidence (B : BasisExistencePackage)
    (E : BasisExistenceEvidence B) : BasisExistenceClosed B := by
  exact And.intro E.maximalIndependentSetClosed
    (And.intro E.spansSpaceClosed
      (And.intro E.linearlyIndependentClosed E.basisConstructedClosed))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse