import GroupPreferencesCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace GroupPreferencesCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  groupConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

end GroupPreferencesCanonicalLaneLean
end HautevilleHouse
