//
//  XDismissBtn.swift
//  FrameworksApp
//
//  Created by Randy Kwalar on 30/04/2024.
//

import SwiftUI

struct XDismissBtn: View {
    @ObservedObject var viewModel: FrameworkGridViewModel
    
    var body: some View {
            HStack {
                Spacer()
                Button {
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()

    }
}

#Preview {
    XDismissBtn(viewModel: FrameworkGridViewModel())
}
