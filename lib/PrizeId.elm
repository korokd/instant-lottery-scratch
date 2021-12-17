module PrizeId exposing
    ( PrizeId
    , fromIntGivenBoundaries
    , toInt
    )


type PrizeId
    = PrizeId Int


fromIntGivenBoundaries : Int -> Int -> Int -> PrizeId
fromIntGivenBoundaries lowerBoundary upperBoundary =
    PrizeId << clamp lowerBoundary upperBoundary


toInt : PrizeId -> Int
toInt (PrizeId id) =
    id
