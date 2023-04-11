//
//  TZSettingsSection.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

extension TZSettingsView {
    struct Secton: Identifiable {
        /**
         The identifier for the section.
         */
        let id: String = UUID().uuidString

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
    struct Theme {
        /// The main color of the theme.
        var color: Color
        /// The font to be used in the themed view or section.
        var font: Font
    }

}

extension TZSettingsView {
    struct TZSettingConfiguration: Identifiable {
        /**
         The identifier for the setting configuration.
         */
        let id: String = UUID().uuidString

        /**
         The type of setting to be displayed.
         */
        let type: CellType

        /**
         The cell configuration for the setting.
         */
        let cellConfiguration: TZSettingCellConfiguration
    }
}
