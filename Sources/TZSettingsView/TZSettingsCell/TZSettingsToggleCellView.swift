//
//  TZSettingsToggleCellView.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

/**
A view that displays the configuration for a toggle cell in the app settings.

- Parameters:
 - isOn: A binding to a Boolean value that determines whether the toggle is on or off.
 - configuration: The configuration for the toggle cell to be displayed.
*/
struct TZSettingsToggleCellView: View {

    /**
    A binding to a Boolean value that determines whether the toggle is on or off.
    */
    @Binding var isOn: Bool

    /**
    The configuration for the toggle cell to be displayed.
    */
    let configuration: TZSettingsView.TZSettingCellConfiguration

    /**
    The body of the view that displays the configuration for a toggle cell.
    */
    var body: some View {
        /**
         A horizontal stack that contains the components of the toggle cell.
         */
        HStack {

            /**
             The content of the toggle cell.
             */
            TZSettingsCellContentView(configuration: configuration)

            /**
             The toggle switch that is displayed in the toggle cell.
             */
            Toggle(isOn: $isOn) {
                EmptyView()
            }
            .tint(configuration.theme?.tint)
        }.background(configuration.theme?.backgroundColor ?? .clear)
    }
}
