//
//  TZSettingsLinkCellView.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

/**
A view that displays the configuration for a link cell in the app settings.

- Parameters:
 - configuration: The configuration for the link cell to be displayed.
 - link: The URL string that the link cell opens when tapped.
*/
struct TZSettingsLinkCellView: View {

    /**
     The configuration for the link cell to be displayed.
     */
    let configuration: TZSettingsView.TZSettingCellConfiguration

    /**
     The URL string that the link cell opens when tapped.
     */
    let link: String

    /**
     The body of the view that displays the configuration for a link cell.
     */
    var body: some View {
        /**
         A conditional view builder that displays a Link view if the URL is valid, and an EmptyView otherwise.
         */
        if let url = URL(string: link) {
            Link(destination: url) {

                /**
                 A horizontal stack that contains the components of the link cell.
                 */
                HStack {

                    /**
                     The content of the link cell.
                     */
                    TZSettingsCellContentView(configuration: configuration)

                    /**
                     A spacer that fills the remaining space in the horizontal stack.
                     */
                    Spacer()

                    /**
                     An indicator arrow that is displayed in the link cell, if applicable.
                     */
                    if configuration.theme?.hasIndicatorView ?? true {
                        Image.arrowForward
                            .renderingMode(.template)
                            .foregroundColor(configuration.theme?.tint)
                    }
                }
            }
        } else {
            EmptyView()
        }
    }
}
