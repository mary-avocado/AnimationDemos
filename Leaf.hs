{-# LANGUAGE NegativeLiterals #-}

import CodeWorld

main :: IO ()
main =
  animationOf leafPic

leafPic :: Double -> Picture
leafPic =
  \t -> pictures [thickPolyline 0.2 [(-10, -7.3), (7.5, -7.3)],
    if t < 5
    then translated (-t) (-t) (rotated (sin t / 2) (translated -4.5 -4.5 (pictures
    [ thickPolyline 0.1 [(1, 1), (7, 7)],
      thickCurve 0.1 [(2,2), (3,6), (7,7)],
      thickCurve 0.1 [(2,2),(6,3), (7,7)],
      thickPolyline 0.05 [(3,3), (3,4)],
      thickPolyline 0.05 [(4,4), (4, 5.5)],
      thickPolyline 0.05 [(5,5), (5, 6.3)],
      thickPolyline 0.05 [(6,6), (6, 6.5)],
      thickPolyline 0.05 [(3,3), (4,3)],
      thickPolyline 0.05 [(4,4), (5.5,  4)],
      thickPolyline 0.05 [(5,5), (6.3,5)],
      thickPolyline 0.05 [ (6,6),(6.5,6)]])))
    else  translated -5 -5 (rotated (sin 5 / 2) (translated -4.5 -4.5 (pictures
    [ thickPolyline 0.1 [(1, 1), (7, 7)],
      thickCurve 0.1 [(2,2), (3,6), (7,7)],
      thickCurve 0.1 [(2,2),(6,3), (7,7)],
      thickPolyline 0.05 [(3,3), (3,4)],
      thickPolyline 0.05 [(4,4), (4, 5.5)],
      thickPolyline 0.05 [(5,5), (5, 6.3)],
      thickPolyline 0.05 [(6,6), (6, 6.5)],
      thickPolyline 0.05 [(3,3), (4,3)],
      thickPolyline 0.05 [(4,4), (5.5,  4)],
      thickPolyline 0.05 [(5,5), (6.3,5)],
      thickPolyline 0.05 [ (6,6),(6.5,6)]])))]