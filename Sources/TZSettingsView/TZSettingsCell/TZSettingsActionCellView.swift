//
//  TZSettingsActionCellView.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

/**
 A view that displays the configuration for an action cell in the  settings.

 - Parameters:
    - configuration: The configuration for the action cell to be displayed.
    - action: The action to be performed when the cell is tapped.
 */
struct TZSettingsActionCellView: View {

    /**
    The configuration for the action cell to be displayed.
    */
    let configuration: TZSettingsView.TZSettingCellConfiguration

    /**
    The action to be performed when the cell is tapped.
    */
    var action: () -> Void

    /**
    The body of the view that displays the configuration for an action cell.
    */
    var body: some View {
        /**
         A button that executes the action when tapped.
         */
        Button(action: action) {

            /**
             A horizontal stack that contains the components of the action cell.
             */
            HStack {

                /**
                 The content of the action cell.
                 */
                TZSettingsCellContentView(configuration: configuration)

                /**
                 A spacer that fills the remaining space in the horizontal stack.
                 */
                Spacer()

                /**
                 An indicator arrow that is displayed in the action cell, if applicable.
                 */
                if configuration.theme?.hasIndicatorView ?? false {
                    Image.arrowForward
                        .renderingMode(.template)
                        .foregroundColor(configuration.theme?.tint)
                }
            }
        }
    }
}
