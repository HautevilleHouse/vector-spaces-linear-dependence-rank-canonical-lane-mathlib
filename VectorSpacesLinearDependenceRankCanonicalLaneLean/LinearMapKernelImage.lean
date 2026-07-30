import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure LinearMapKernelImagePackage where
  linearMap : Type u
  vectorSpaceDomain : Type v
  vectorSpaceCodomain : Type w
  kernelIsSubspace : Prop
  imageIsSubspace : Prop
  kernelDimension : Prop
  imageDimension : Prop
  injectivityCriterion : Prop
  surjectivityCriterion : Prop

structure LinearMapKernelImageEvidence (P : LinearMapKernelImagePackage) where
  kernelIsSubspaceClosed : P.kernelIsSubspace
  imageIsSubspaceClosed : P.imageIsSubspace
  kernelDimensionClosed : P.kernelDimension
  imageDimensionClosed : P.imageDimension
  injectivityCriterionClosed : P.injectivityCriterion
  surjectivityCriterionClosed : P.surjectivityCriterion

def LinearMapKernelImageClosed (P : LinearMapKernelImagePackage) : Prop :=
  P.kernelIsSubspace ∧ P.imageIsSubspace ∧ P.kernelDimension ∧ P.imageDimension ∧
  P.injectivityCriterion ∧ P.surjectivityCriterion

theorem linear_map_kernel_image_closed_from_evidence (P : LinearMapKernelImagePackage) (E : LinearMapKernelImageEvidence P) :
    LinearMapKernelImageClosed P := by
  exact And.intro E.kernelIsSubspaceClosed
    (And.intro E.imageIsSubspaceClosed
      (And.intro E.kernelDimensionClosed
        (And.intro E.imageDimensionClosed
          (And.intro E.injectivityCriterionClosed E.surjectivityCriterionClosed))))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse