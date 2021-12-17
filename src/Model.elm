module Model exposing (Flags, Model, initial)


type alias Flags =
    { rootId : String
    }


type alias Model =
    { count : Int
    , rootId : String
    }


initial : Flags -> Model
initial { rootId } =
    { count = 0
    , rootId = rootId
    }
