//
//  TZSettingsCellConfiguration.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

extension TZSettingsView {

    /**
     An enumeration of the types of cells that can be used to configure settings.
     */
    public enum CellType {

        /**
         A cell type that displays a navigation view.
         - Parameters:
         - view: The view to be displayed.
         */
        case navigation(view: any View)

        /**
         A cell type that displays a hyperlink.
         - Parameters:
         - url: The URL to be opened when the hyperlink is tapped.
         */
        case link(url: String)

        /**
         A cell type that displays a toggle switch.
         - Parameters:
         - isOn: A binding to a boolean value that determines the on/off state of the toggle.
         */
        case toggle(isOn: Binding<Bool>)

        /**
         A cell type that performs an action when tapped.
         - Parameters:
         - action: The action to be performed.
         */
        case action(() -> Void)
    }
}

extension TZSettingsView {

    /**
     A struct that defines the configuration for a setting cell.
     */
    public struct TZSettingCellConfiguration {

        /**
         The image to be displayed in the cell.
         */
        let image: Image

        /**
         The title to be displayed in the cell.
         */
        let title: String

        /**
         The theme to be applied to the cell, if any.
         */
        var theme: Theme?

        public init(image: Image, title: String, theme: Theme? = nil) {
            self.image = image
            self.title = title
            self.theme = theme
        }
    }
}

extension TZSettingsView.TZSettingCellConfiguration {

    /**
     A struct that defines the theme to be applied to a cell configuration.
     */
    public struct Theme {

        /**
         The background color of the cell.
         */
        var color: Color

        /**
         The tint color of the cell.
         */
        var tint: Color

        /**
         The font to be used in the cell.
         */
        var font: Font

        /**
         A boolean value indicating whether or not the cell should display an indicator view.
         */
        var hasIndicatorView: Bool = true

        public init(color: Color, tint: Color, font: Font, hasIndicatorView: Bool) {
            self.color = color
            self.tint = tint
            self.font = font
            self.hasIndicatorView = hasIndicatorView
        }
    }
}
