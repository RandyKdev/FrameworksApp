//
//  FrameworkDetailView.swift
//  FrameworksApp
//
//  Created by Randy Kwalar on 30/04/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    let framework: Framework
    @ObservedObject var viewModel: FrameworkGridViewModel
    @State var isShowingSafariView = false;
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
                
            }
        }
        .sheet(isPresented: $isShowingSafariView) {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework,
                        viewModel: FrameworkGridViewModel())
}
