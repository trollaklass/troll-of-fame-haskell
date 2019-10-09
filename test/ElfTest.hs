module ElfTest where

import           Elf
import           Test.Tasty.HUnit

test_darkWarlock =
  testCase "Dark warlocks all have the same value" $
  let doomShadow = Elf {race = High, role = Warlock}
      thundershade = Elf {race = High, role = Warlock}
   in value doomShadow @?= value thundershade

test_darkArcherSameValueAsHighSwordsman =
  testCase "A Dark Archer is worth the same as a High Swordsman" $
  let faeor = Elf {race = High, role = Swordsman}
      doomShadow = Elf {race = Dark, role = Archer}
   in value faeor @?= value doomShadow
