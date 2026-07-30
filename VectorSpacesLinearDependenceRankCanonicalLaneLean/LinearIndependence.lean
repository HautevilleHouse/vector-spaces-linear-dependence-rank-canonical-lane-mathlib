import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure LinearIndependencePackage where
  vectorSpace : Type u
  field : Type v
  finiteSet : Set (vectorSpace)
  linearCombinationZeroCoefficients : Prop
  nontrivialCombinationExists : Prop
  independencePreservedUnderSubset : Prop
  independenceTest : Prop

structure LinearIndependenceEvidence (P : LinearIndependencePackage) where
  linearCombinationZeroCoefficientsClosed : P.linearCombinationZeroCoefficients
  nontrivialCombinationExistsClosed : P.nontrivialCombinationExists
  independencePreservedUnderSubsetClosed : P.independencePreservedUnderSubset
  independenceTestClosed : P.independenceTest

def LinearIndependenceClosed (P : LinearIndependencePackage) : Prop :=
  P.linearCombinationZeroCoefficients ∧ P.nontrivialCombinationExists ∧
  P.independencePreservedUnderSubset ∧ P.independenceTest

theorem linear_independence_closed_from_evidence (P : LinearIndependencePackage) (E : LinearIndependenceEvidence P) :
    LinearIndependenceClosed P := by
  exact And.intro E.linearCombinationZeroCoefficientsClosed
    (And.intro E.nontrivialCombinationExistsClosed
      (And.intro E.independencePreservedUnderSubsetClosed E.independenceTestClosed))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse