//
//  TZSettingsSection.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

extension TZSettingsView {
    public struct Secton: Identifiable {
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
    }
}

extension TZSettingsView.Secton {
    /// A struct representing a theme that can be applied to a view or a section in the `AppSettingsView.` SwiftUI view.
    public struct Theme {
        /// The main color of the theme.
        var color: Color
        /// The font to be used in the themed view or section.
        var font: Font
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
        public let cellConfiguration: TZSettingCellConfiguration
    }
}
