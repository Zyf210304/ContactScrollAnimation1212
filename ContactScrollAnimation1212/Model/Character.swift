//
//  Character.swift
//  ContactScrollAnimation1212
//
//  Created by 张亚飞 on 2022/12/12.
//

import SwiftUI

struct Character: Identifiable {
   
    var id: String = UUID().uuidString
    var value: String
    var index: Int = 0
    var rect: CGRect = .zero
    var pushOffset: CGFloat = 0
    var isCurrent: Bool = false
    var color: Color = .clear
}
