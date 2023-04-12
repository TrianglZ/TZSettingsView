//
//  TZSettingsView.swift
//  TrianglZ LLC
//
//  Created by Samir on 29/03/2023.
//

import SwiftUI

/**
 A view that displays a list of app settings grouped by sections.

 Example usage:
 
     struct SettingsView: View {
         @State var isNotificationOn: Bool = false

         var body: some View {
             ScrollView {
                TZSettingsView(adapter: SettingsAdapter())
             }
         }
     }
 */
public struct TZSettingsView: View {
    /// The adapter property is an instance of TZSettingsAdapter
    /// that provides the app settings sections to be displayed in the view.
    let adapter: TZSettingsAdapter

    public init(adapter: TZSettingsAdapter) {
        self.adapter = adapter
    }
    
    public var body: some View {
        VStack(spacing: 25) {
            ForEach(adapter.getSettingsSections()) { section in
                TZSettingsSectionView(section: section)
            }
        }
    }
}
