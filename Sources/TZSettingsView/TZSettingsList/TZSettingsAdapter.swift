//
//  TZSettingsAdapter.swift
//  TrianglZ LLC
//
//  Created by Samir on 05/04/2023.
//

import Foundation
/**
 TZSettingsAdapter is a protocol that defines the interface for an object that provides app settings sections to be displayed in a view.

    Usage Example:
 
         class MySettingsAdapter: TZSettingsAdapter {
             func getSettingsSections() -> [TZSettingsView.Section] {
                 // Return an array of app settings sections.
                 return []
             }
         }
 */
protocol TZSettingsAdapter {
    func getSettingsSections() -> [TZSettingsView.Secton]
}
