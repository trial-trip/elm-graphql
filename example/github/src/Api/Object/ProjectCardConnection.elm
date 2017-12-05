module Api.Object.ProjectCardConnection exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.ProjectCardConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.ProjectCardEdge -> FieldDecoder (List edges) Api.Object.ProjectCardConnection
edges object =
    Object.listOf "edges" [] object


nodes : Object nodes Api.Object.ProjectCard -> FieldDecoder (List nodes) Api.Object.ProjectCardConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.ProjectCardConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.ProjectCardConnection
totalCount =
    Field.fieldDecoder "totalCount" [] Decode.int