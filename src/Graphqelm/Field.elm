module Graphqelm.Field exposing (Field(Composite, Leaf))

import Graphqelm.Builder.Argument as Argument exposing (Argument)


type Field
    = Composite String (List Argument) (List Field)
    | Leaf String (List Argument)