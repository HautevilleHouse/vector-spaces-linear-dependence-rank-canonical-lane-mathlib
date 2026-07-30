import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

structure BasisAndDimensionPackage where
  vectorSpace : Type u
  field : Type v
  basisSet : Set (vectorSpace)
  basisLinearIndependent : Prop
  basisSpanning : Prop
  dimensionDefined : Prop
  dimensionFinite : Prop
  dimensionUnique : Prop

structure BasisAndDimensionEvidence (P : BasisAndDimensionPackage) where
  basisLinearIndependentClosed : P.basisLinearIndependent
  basisSpanningClosed : P.basisSpanning
  dimensionDefinedClosed : P.dimensionDefined
  dimensionFiniteClosed : P.dimensionFinite
  dimensionUniqueClosed : P.dimensionUnique

def BasisAndDimensionClosed (P : BasisAndDimensionPackage) : Prop :=
  P.basisLinearIndependent ∧ P.basisSpanning ∧ P.dimensionDefined ∧ P.dimensionFinite ∧ P.dimensionUnique

theorem basis_and_dimension_closed_from_evidence (P : BasisAndDimensionPackage) (E : BasisAndDimensionEvidence P) :
    BasisAndDimensionClosed P := by
  exact And.intro E.basisLinearIndependentClosed
    (And.intro E.basisSpanningClosed
      (And.intro E.dimensionDefinedClosed
        (And.intro E.dimensionFiniteClosed E.dimensionUniqueClosed)))

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse