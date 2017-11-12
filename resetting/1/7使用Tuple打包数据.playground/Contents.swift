//: Playground - noun: a place where people can play

import UIKit

let succes = (200, "HTTP OK")
let fileNotFound = (404, "File not found")
let redirect : (Int, String) = (302, "Temporary redirect")

succes.0
succes.1


let me = (name: "Mars", no: 11, email: "lin@boxue.io")
me.name
me.no
me.email

//tupul decomposition

var (succcessCode, successMessage) = succes

succcessCode = 201
successMessage

succes

let (_, errorMessage) = fileNotFound
errorMessage

let tuple12 = (1,2)
let tuple12 = (1,2)












