//
//  OffsetModifier.swift
//  ContactScrollAnimation1212
//
//  Created by 张亚飞 on 2022/12/13.
//

import SwiftUI

extension View {
    
    @ViewBuilder
    func offset(completion: @escaping (CGRect) -> ()) -> some View {
        self.overlay {
            GeometryReader {proxy in
                let rect = proxy.frame(in: .named("SCROLLER"))
                Color.clear
                    .preference(key: OffsetKey.self, value: rect)
                    .onPreferenceChange(OffsetKey.self) { value in
                        completion(value)
                    }
            }
        }
    }
}


struct OffsetKey: PreferenceKey {
    
    static var defaultValue: CGRect = .zero
    
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {
        value = nextValue()
    }
}
