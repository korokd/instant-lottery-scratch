module Model exposing
    ( Flags
    , Model
    , initial
    , prizeLowerBoundary
    , prizeUpperBoundary
    )

import PrizeId exposing (PrizeId)


type alias Flags =
    { prizeId : Int
    }


type alias Model =
    { prizeLowerBoundary : Int
    , prizeUpperBoundary : Int
    , prizeId : PrizeId
    }


initial : Flags -> Model
initial { prizeId } =
    { prizeLowerBoundary = prizeLowerBoundary
    , prizeUpperBoundary = prizeUpperBoundary
    , prizeId =
        PrizeId.fromIntGivenBoundaries
            prizeLowerBoundary
            prizeUpperBoundary
            prizeId
    }


prizeLowerBoundary : Int
prizeLowerBoundary =
    0


prizeUpperBoundary : Int
prizeUpperBoundary =
    8
