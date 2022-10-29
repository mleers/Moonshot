//
//  RectangleDivider.swift
//  Moonshot
//
//  Created by Mitch on 10/27/22.
//  Copyright © 2022 mleers. All rights reserved.
//

import SwiftUI

struct RectangleDivider: View {
    var height:  CGFloat = 10
    var color:   Color   = .black
    var opacity: CGFloat = 0.8
    
    var body: some View {
        Rectangle()
            .frame(height: height)
            .foregroundColor( color.opacity(opacity))
    }
}

struct RectangleDivider_Previews: PreviewProvider {
    static var previews: some View {
        RectangleDivider()
    }
}
