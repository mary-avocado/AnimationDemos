{-# LANGUAGE NegativeLiterals #-}

import CodeWorld

main :: IO ()
main = animationOf solarSystem

solarSystem :: (Double -> Picture)
solarSystem = 
  \t ->
    pictures [colored yellow (solidCircle 1),
    translated (cos (t/0.24) * 2) (sin (t/0.24) * 2)(colored (mixed [brown, grey]) (solidCircle 0.15)),
    translated (cos (t/0.6) * 4) (sin (t/0.6) * 4)(colored orange (solidCircle (0.15*3))),
    translated (cos t * 6.5) (sin t * 6.5)(colored (mixed [blue, green])(solidCircle (0.15*3.2))),
    translated (cos (t/1.88) * 9) (sin (t/1.88) * 9)(colored (mixed [brown, red]) (solidCircle (0.15*1.6))),
    translated (cos (t/11.86) * 12) (sin (t/11.86) * 12)(colored (mixed [orange, red, white, brown]) (solidCircle (0.7))),
    translated (cos (t/29.46) * 16) (sin (t/29.46) * 16)(colored orange (solidCircle (0.6))),
    translated (cos (t/84) * 18.5) (sin (t/84) * 18.5)(colored blue (solidCircle (0.4))),
    translated (cos (t/164) * 21) (sin (t/164) * 21)(colored cyan (solidCircle (0.3)))]