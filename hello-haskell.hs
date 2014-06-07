import Data.List (foldl')

evenSum l = mysum 0 (filter even l)
    where
      mysum n [] = n
      mysum n (x:xs) = mysum (n+x) xs

-- Compact version

evenSum2 l = foldl' (\x y -> x+y) 0 (filter even l)

-- data Color  = ColorConstr String

-- data Eva e = EvaConstr {  
--      name :: String
--      ,activationProbability :: Float }
--      deriving (Read,Eq,Ord,Show)

-- -- Try to define the Show...
-- instance (Show e) => Show(Eva e) where
--          show t = "EvAngelion "

--main = putStrLn "Hi from FWorld!"
--main = print $ EvaConstr "eva01" 0.01

--Function application has higher precedence than using operators, so the 
--following two expressions have the same meaning
-- (compare 2 3) == LT
-- compare 2 3 == LT

-- zub ::  a -> a
-- zub n = 
--     n*n


-- Type can be used to make alias and got shorter description

type PilotName = String
type PilotAge  = Int
type IsAngel   = Bool

-- Simple enumeration 
data EvaType = Eva00
             | Eva01
             | Eva02
             | Eva03
     deriving (Read,Eq,Ord,Show)

data AngelPower= ATF
     | Regen
     | Bersek
     | CanActivate3rdImpact
     deriving (Read,Eq,Ord,Show)

data Robot = Robot EvaType PilotName PilotAge IsAngel [AngelPower]
     deriving (Read,Eq,Ord,Show)

-- Make a Eva....
eva00= Robot Eva00 "Rei" 14 True [ATF]

eva01= Robot Eva01 "Sinji" 16 False [ATF,Regen,Bersek,CanActivate3rdImpact]

main = print eva01 eva00
-- main = print $ EvaConstr "eva01" 0.01
