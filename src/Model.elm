module Model exposing (Flags, Model, initial)


type alias Flags =
    { rootId : String
    }


type alias Model =
    Flags


initial : Flags -> Model
initial { rootId } =
    { rootId = rootId
    }
