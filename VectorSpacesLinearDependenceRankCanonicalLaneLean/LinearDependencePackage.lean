import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure LinearDependencePackage (V : AdmittedVectorSpace) where
  vectors : List V.carrier
  dependent : Prop
  nontrivialCombination : Prop
  coefficientsExist : Prop

structure LinearDependenceEvidence {V : AdmittedVectorSpace} (P : LinearDependencePackage V) where
  dependentClosed : P.dependent
  nontrivialCombinationClosed : P.nontrivialCombination
  coefficientsExistClosed : P.coefficientsExist

def LinearDependenceClosed {V : AdmittedVectorSpace} (P : LinearDependencePackage V) : Prop :=
  P.dependent ∧ P.nontrivialCombination ∧ P.coefficientsExist

theorem linear_dependence_closed_from_evidence
    {V : AdmittedVectorSpace} (P : LinearDependencePackage V)
    (E : LinearDependenceEvidence P) : LinearDependenceClosed P := by
  exact And.intro E.dependentClosed
    (And.intro E.nontrivialCombinationClosed E.coefficientsExistClosed)

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse