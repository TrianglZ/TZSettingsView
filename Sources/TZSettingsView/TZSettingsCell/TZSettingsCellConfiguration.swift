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

        /**
         A cell type that shows custom view.
         - Parameters:
         - View: view to be implemented instead of cell.
         */
        case custom(AnyView)
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
         The hint to be applied to the cell, if any.
         */
        var hint: String?
        /**
         The description text to be displayed in the cell, if any.
         */
        var description: String?
        /**
         The theme to be applied to the cell, if any.
         */
        var theme: Theme?
        /**
         An optional animation to apply to the cell.
         */
        var animation: Animation?

        public init(image: Image,
                    title: String,
                    hint: String? = nil,
                    description: String? = nil,
                    theme: Theme? = nil,
                    animation: Animation? = nil) {
            self.image = image
            self.title = title
            self.hint = hint
            self.description = description
            self.theme = theme
            self.animation = animation
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
        var color: Color?

        /**
         The tint color of the cell.
         */
        var tint: Color?

        /**
         The font to be used in the cell.
         */
        var font: Font?

        /**
         A boolean value indicating whether or not the cell should display an indicator view.
         */
        var hasIndicatorView: Bool

        /**
         The hint color of the cell.
         */
        var hintColor: Color?

        /**
         The description color of the cell.
         */
        var descriptionColor: Color?

        /**
         The description font of the cell.
         */
        var descriptionFont: Font?

        /**
         The width of the image in the cell.
         */
        var imageWidth: CGFloat?

        /**
         The height of the image in the cell.
         */
        var imageHeight: CGFloat?

        /**
         The background color of the cell.
         */
        var backgroundColor: Color?
        /**
         The vertical spacing between elements in the cell.
         */
        var verticalSpacing: CGFloat?      
        /**
         Determines if the image has an animation.
         */
        var isAnimated: Binding<Bool>
        
        /**
         The scale effect value for the image animation.
         */
        var scaleEffectValue: CGFloat?
        
        /**
         The animation to apply to the cell components.
         */
        var animation: Animation?

        public init(color: Color? = nil,
                    tint: Color? = nil,
                    font: Font? = nil,
                    hasIndicatorView: Bool = true,
                    hintColor: Color? = nil,
                    descriptionColor: Color? = nil,
                    descriptionFont: Font? = nil,
                    imageWidth: CGFloat? = 20,
                    imageHeight: CGFloat? = 20,
                    backgroundColor: Color? = .clear,
                    verticalSpacing: CGFloat? = nil,
                    isAnimated: Binding<Bool>,
                    scaleEffectValue: CGFloat? = 1.0,
                    animation: Animation? = nil) {
            self.color = color
            self.tint = tint
            self.font = font
            self.hasIndicatorView = hasIndicatorView
            self.hintColor = hintColor
            self.descriptionColor = descriptionColor
            self.descriptionFont = descriptionFont
            self.imageWidth = imageWidth
            self.imageHeight = imageHeight
            self.backgroundColor = backgroundColor
            self.verticalSpacing = verticalSpacing
            self.isAnimated = isAnimated
            self.scaleEffectValue = scaleEffectValue
            self.animation = animation
        }
    }
}
