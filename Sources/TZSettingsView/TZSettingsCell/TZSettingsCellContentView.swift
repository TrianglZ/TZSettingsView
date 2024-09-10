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
        HStack(spacing: 16) {

            /**
             The image to be displayed in the setting cell.
             */
            if let theme = configuration.theme {
                configuration.image
                    .frame(maxWidth: theme.imageWidth, maxHeight: theme.imageHeight)
                    .scaleEffect((theme.isAnimated.wrappedValue ?
                                   theme.scaleEffectValue :
                                    1.0) ?? 1.0)
                    .animation(configuration.animation,
                               value: theme.isAnimated.wrappedValue)
            }
            /**
             A vertical stack that wraps the title and description.
             */
            VStack(alignment: .leading, spacing: configuration.theme?.verticalSpacing ?? 8) {
                /**
                 The title of the setting cell.
                 */
                Text(configuration.title)
                    .foregroundColor(configuration.theme?.color ?? .black)
                    .font(configuration.theme?.font ?? .system(size: 15))

                /**
                 The description of the setting cell.
                 */
                if let description = configuration.description,
                   !description.isEmpty {
                    Text(configuration.description ?? "")
                        .foregroundColor(configuration.theme?.descriptionColor ?? .white)
                        .font(configuration.theme?.descriptionFont ?? .system(size: 13))
                }
            }
            /**
             A spacer that fills the remaining space in the horizontal stack.
             */
            Spacer()

            /**
             The hint of the setting cell if exists.
             */
            if let hint = configuration.hint {
                Text(hint)
                    .foregroundColor(configuration.theme?.hintColor ?? .gray)
                    .font(configuration.theme?.font ?? .system(size: 15))
                    .padding(.trailing, 16)
            }
        }.background(configuration.theme?.backgroundColor ?? .clear)
    }
}
