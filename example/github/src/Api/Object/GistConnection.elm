module Api.Object.GistConnection exposing (..)

import Api.Object
import Graphqelm.Argument as Argument exposing (Argument)
import Graphqelm.Field as Field exposing (Field, FieldDecoder)
import Graphqelm.Object as Object exposing (Object)
import Json.Decode as Decode


build : (a -> constructor) -> Object (a -> constructor) Api.Object.GistConnection
build constructor =
    Object.object constructor


edges : Object edges Api.Object.GistEdge -> FieldDecoder (List edges) Api.Object.GistConnection
edges object =
    Object.listOf "edges" [] object


nodes : Object nodes Api.Object.Gist -> FieldDecoder (List nodes) Api.Object.GistConnection
nodes object =
    Object.listOf "nodes" [] object


pageInfo : Object pageInfo Api.Object.PageInfo -> FieldDecoder pageInfo Api.Object.GistConnection
pageInfo object =
    Object.single "pageInfo" [] object


totalCount : FieldDecoder Int Api.Object.GistConnection
totalCount =
    Field.fieldDecoder "totalCount" [] Decode.int