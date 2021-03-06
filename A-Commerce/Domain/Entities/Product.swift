//
//  Product.swift
//  A-Commerce
//
//  Created by Nattapon Pondongnok on 6/6/2564 BE.
//

import Foundation
import ObjectMapper

class Product: Mappable {
    var id: Int?
    var title: String?
    var image: String?
    var content: String?
    var isNewProduct: Bool?
    var price: Float?
    
    required init?(map: Map) {

    }

    func mapping(map: Map) {
        id            <- map["id"]
        title         <- map["title"]
        image         <- map["image"]
        content       <- map["content"]
        isNewProduct  <- map["isNewProduct"]
        price         <- map["price"]
    }
    
    var displayPrice: String? {
        guard let price = price else {
            return nil
        }
        
        return String(format: "%.2f", price)
    }
    
    init(
        id: Int?,
        title: String?,
        image: String?,
        content: String?,
        isNewProduct: Bool?,
        price: Float?
    ) {
        self.id = id
        self.title = title
        self.image = image
        self.content = content
        self.isNewProduct = isNewProduct
        self.price = price
    }
}
