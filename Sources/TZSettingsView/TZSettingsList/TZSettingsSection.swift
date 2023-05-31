//
//  TZSettingsSection.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

extension TZSettingsView {
    public struct Section: Identifiable {
        /**
         The identifier for the section.
         */
        public let id: String = UUID().uuidString

        /**
         The title of the section.
         */
        var title: String?

        /**
         The theme configuration for the section.
         */
        var theme: Theme?

        /**
         The settings to be displayed in the section.
         */
        var cells: [TZSettingConfiguration]

        /**
         The height for each cell in a section
         */
        var cellHeight: CGFloat?

        public init(title: String? = nil, theme: Theme? = nil, cells: [TZSettingConfiguration], cellHeight: CGFloat?) {
            self.title = title
            self.theme = theme
            self.cells = cells
            self.cellHeight = cellHeight
        }
    }
}

extension TZSettingsView.Section {
    /// A struct representing a theme that can be applied to a view or a section in the `AppSettingsView.` SwiftUI view.
    public struct Theme {
        /// The main color of the theme.
        var color: Color
        /// The font to be used in the themed view or section.
        var font: Font

        public init(color: Color, font: Font) {
            self.color = color
            self.font = font
        }
    }

}

extension TZSettingsView {
    public struct TZSettingConfiguration: Identifiable {
        /**
         The identifier for the setting configuration.
         */
        public let id: String = UUID().uuidString

        /**
         The type of setting to be displayed.
         */
        let type: CellType

        /**
         The cell configuration for the setting.
         */
        let cellConfiguration: TZSettingCellConfiguration

        public init(type: CellType, cellConfiguration: TZSettingCellConfiguration) {
            self.type = type
            self.cellConfiguration = cellConfiguration
        }
    }
}
