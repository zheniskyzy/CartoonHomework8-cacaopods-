//
//  Cartoon.swift
//  CartoonHomework8(cacaopods)
//
//  Created by Madina Olzhabek on 30.12.2023.
//

import Foundation
import SwiftyJSON

struct Cartoon{
    var name = ""
    var year = ""
    var country = ""
    var flag = ""
    var imageOfCartoon = ""
    
    init(json:JSON){
        if let item = json["name"].string{
            name = item
        }
        if let item = json["year"].string{
            year = item
        }
        if let item = json["country"].string{
            country = item
        }
        if let item = json["flag"].string{
            flag = item
        }
        if let item = json["imageOfCartoon"].string{
            imageOfCartoon = item
        }

    }
    
}
