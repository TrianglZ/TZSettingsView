//
//  TZSettingsSectionView.swift
//  TrianglZ LLC
//
//  Created by Samir on 30/03/2023.
//

import SwiftUI

/**
 A view that displays a section of settings in an app settings view.

 Use `TZSettingsView.Section` to define the settings  section, and `AppSettingsView.TZSettingConfiguration`
 to define each setting cell within the section.

 */
struct TZSettingsSectionView: View {
    /// The section of settings to display in this view.
    let section: TZSettingsView.Section

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // MARK: - title for each Section
            if let title = section.title {
                Text(title)
                    .foregroundColor(section.theme?.color ?? .black)
                    .font(section.theme?.font ?? .system(size: 15, weight: .medium))
            }
            // MARK: - Cells for each Section
            VStack(spacing: 0) {
                ForEach(section.cells) { cell in
                    VStack(spacing: 0) {
                        Group {
                            switch cell.type {
                            case .navigation(let view):
                                TZSettingsNavigationCellView(configuration: cell.cellConfiguration) {
                                    AnyView(view)
                                }
                            case .link(let url):
                                TZSettingsLinkCellView(configuration: cell.cellConfiguration, link: url)
                            case .toggle(let isOn):
                                TZSettingsToggleCellView(isOn: isOn,
                                                          configuration: cell.cellConfiguration)
                            case .action(let action):
                                TZSettingsActionCellView(configuration: cell.cellConfiguration,
                                                          action: action)
                            }
                        }
                        .frame(height: section.cellHeight ?? 60)

                        if section.shouldShowCellsDivider && section.cells.last != cell {
                            Divider()
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
            .background(Color.white)
            .cornerRadius(12)
        }
        .background(section.theme?.backgroundColor ?? Color.clear)
        .padding(.horizontal, 20)
    }
}
