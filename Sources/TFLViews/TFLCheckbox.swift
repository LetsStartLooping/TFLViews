//
//  TFLCheckbox.swift
//  TFLViews
//
//  Created by Vikas Seth on 9/26/20.
//

import SwiftUI

@available(iOS 13.0, *)

/// A SwiftUI Checkbox View
/// - Parameters
struct TFLCheckbox: View {
    
    @Binding var isChecked: Bool
    
    var body: some View {
      Circle()
        .padding(4)
        .overlay(
          Circle()
            .stroke(Color.red, lineWidth: 2)
      )
        .foregroundColor(isChecked ? .red : .clear)
        .frame(width:20, height: 20)
    }
}

struct TFLCheckbox_Previews: PreviewProvider {
    @available(iOS 13.0.0, *)
    static var previews: some View {
        TFLCheckbox(isChecked: .constant(true)).previewLayout(.fixed(width: 300, height: 70))
    }
}
