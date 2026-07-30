import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorSpacesLinearDependenceRankCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  VectorSpaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VectorSpacesLinearDependenceRankCanonicalLaneLean
end HautevilleHouse