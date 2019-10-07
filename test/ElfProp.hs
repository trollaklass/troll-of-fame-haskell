module ElfProp where

import           Elf
import           Generators            ()
import           Test.Tasty.QuickCheck

test_elfValueProductRaceRole =
  testProperty "The value of a High elf must be an even number" $ \elf ->
    if race elf == High
      then value elf `mod` 2 == 0
      else True
