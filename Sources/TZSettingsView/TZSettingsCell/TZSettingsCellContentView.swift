//
//  TZSettingsCellContentView.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI
/**
 A view that displays the configuration for a setting cell.

 - Parameters:
 - configuration: The configuration for the setting cell to be displayed.
 */

struct TZSettingsCellContentView: View {
    let configuration: TZSettingsView.TZSettingCellConfiguration

    var body: some View {

        /**
         A horizontal stack that contains the components of the setting cell.
         */
        HStack(spacing: 15) {

            /**
             The image to be displayed in the setting cell.
             */
            configuration.image
                .frame(maxWidth: 20, maxHeight: 20)

            /**
             The title of the setting cell.
             */
            Text(configuration.title)
                .foregroundColor(configuration.theme?.color ?? .black)
                .font(configuration.theme?.font ?? .system(size: 15))
        }
    }
}
