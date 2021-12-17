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
    , rootId : String
    }


type alias Model =
    { prizeLowerBoundary : Int
    , prizeUpperBoundary : Int
    , prizeId : PrizeId
    , rootId : String
    }


initial : Flags -> Model
initial { rootId, prizeId } =
    { prizeLowerBoundary = prizeLowerBoundary
    , prizeUpperBoundary = prizeUpperBoundary
    , prizeId =
        PrizeId.fromIntGivenBoundaries
            prizeLowerBoundary
            prizeUpperBoundary
            prizeId
    , rootId = rootId
    }


prizeLowerBoundary : Int
prizeLowerBoundary =
    0


prizeUpperBoundary : Int
prizeUpperBoundary =
    8
