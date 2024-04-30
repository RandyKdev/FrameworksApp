//
//  FrameworkGridViewModel.swift
//  FrameworksApp
//
//  Created by Randy Kwalar on 30/04/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
