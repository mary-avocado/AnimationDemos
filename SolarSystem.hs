{-# LANGUAGE NegativeLiterals #-}

import CodeWorld

main :: IO ()
main = animationOf solarSystem

data Planet =
  MkPlanet
    { size :: Double,
      colour :: Color,
      period :: Double,
      distance :: Double
    }

mercury = 
  MkPlanet 
    { size = 0.15,
      colour = mixed [brown, grey],
      period = 0.24,
      distance = 2
    }

venus = 
  MkPlanet 
    { size = 0.15 * 3,
      colour = orange,
      period = 0.6,
      distance = 4
    }

earth = 
  MkPlanet 
    { size = 0.15 * 3.2,
      colour = mixed [blue, green],
      period = 1,
      distance = 6.5
    }

mars = 
  MkPlanet 
    { size = 0.15 * 1.6,
      colour = mixed [brown, red],
      period = 1.88,
      distance = 9
    }

jupiter = 
  MkPlanet 
    { size = 0.7,
      colour = mixed [brown, orange, red, white],
      period = 11.86,
      distance = 12
    }

saturn = 
  MkPlanet 
    { size = 0.6,
      colour = orange,
      period = 29.46,
      distance = 16
    }

uranus = 
  MkPlanet 
    { size = 0.3,
      colour = cyan,
      period = 84,
      distance = 18.5
    }

neptune = 
  MkPlanet 
    { size = 0.4,
      colour = blue,
      period = 164,
      distance = 21
    }

sun = colored yellow (solidCircle 1)

planet :: Planet -> Double -> Picture
planet = 
  \p t ->
    translated
      (cos (t/period p) * distance p)
      (sin (t/period p) * distance p)
      (colored (colour p) (solidCircle (size p)))

solarSystem :: Double -> Picture
solarSystem = 
  \t ->
    pictures
      [ sun,
        planet mercury t,
        planet venus t,
        planet earth t,
        planet mars t,
        planet jupiter t,
        planet saturn t,
        planet uranus t,
        planet neptune t
      ]