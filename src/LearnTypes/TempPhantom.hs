module LearnTypes.TempPhantom where


-- 'unit' is called a phantom type
newtype Temp unit = Temp Double
  deriving (Num, Fractional, Show, Eq)

-- empty declarations
data F
data C

paperBurning :: Temp F
paperBurning = 451

absoluteZero :: Temp C
absoluteZero = -273.15

f2c :: Temp F -> Temp C
f2c (Temp f) = Temp ((f-32)*5/9)

-- TYPE ERROR: Couldn't match type ‘C’ with ‘F’
-- err = tf - tc

diff :: Temp C
diff = f2c paperBurning - absoluteZero

nonsence :: Temp Bool
nonsence = 0