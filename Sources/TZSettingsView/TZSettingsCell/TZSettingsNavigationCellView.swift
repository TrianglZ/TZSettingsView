//
//  TZSettingsNavigationCellView.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

/**
A view that displays the configuration for a navigation cell in the app settings.

- Parameters:
 - configuration: The configuration for the navigation cell to be displayed.
 - destination: The destination view that the navigation cell links to.
*/
struct TZSettingsNavigationCellView<Destination>: View where Destination: View {

    /**
    The configuration for the navigation cell to be displayed.
    */
    let configuration: TZSettingsView.TZSettingCellConfiguration

    /**
    The destination view that the navigation cell links to.
    */
    @ViewBuilder let destination: Destination

    /**
    The body of the view that displays the configuration for a navigation cell.
    */
    var body: some View {
        /**
         A NavigationLink view that navigates to the destination view.
         */
        NavigationLink(destination: destination) {

            /**
             A horizontal stack that contains the components of the navigation cell.
             */
            HStack {

                /**
                 The content of the navigation cell.
                 */
                TZSettingsCellContentView(configuration: configuration)

                /**
                 An indicator arrow that is displayed in the navigation cell, if applicable.
                 */
                if configuration.theme?.hasIndicatorView ?? true {
                    Image.arrowForward
                        .renderingMode(.template)
                        .foregroundColor(configuration.theme?.tint)
                }
            }.background(configuration.theme?.backgroundColor ?? .clear)
        }
    }
}
