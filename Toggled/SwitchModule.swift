//
//  SwitchModule.swift
//  Toggled
//
//  Created by Bug on 4/19/21.
//

import SwiftUI

struct SwitchModule: View {
    
    let label: String
    
    @State var toggleIsOn: Bool
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .foregroundColor(Color(UIColor.systemBackground))
            VStack(spacing: 16) {
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "ellipsis")
                    })
                }
                Text(label)
                    .font(.system(.caption, design: .default))
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .textCase(.uppercase)
                Toggle(isOn: $toggleIsOn) {}
                    .labelsHidden()
                    .toggleStyle(SwitchToggleStyle(tint: Color.accentColor))
            }
            .padding()
        }
    }
}

// MARK: - Previews

struct SwitchModule_Previews: PreviewProvider {
    static var previews: some View {
        SwitchModule(label: "My Toggle", toggleIsOn: false)
    }
}
