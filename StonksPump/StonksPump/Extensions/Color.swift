//
//  Color.swift
//  StonksPump
//
//  Created by Alex on 17.08.2021.
//

import SwiftUI

extension Color {
    static let theme = ColorTheme()
}

struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let red = Color("RedColor")
    let green = Color("GreenColor")
    let secondaryText = Color("SecondaryTextColor")
}
