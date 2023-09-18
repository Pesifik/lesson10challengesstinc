//
//  ThingView.swift
//  Lesson 6 Ex
//
//  Created by Teh Tian Cheng on 14/8/23.
//

import SwiftUI

struct ThingView: View {
    @Binding var amountbind: Int
    @Binding var descbind: String
    @Binding var titlebind: String
    var body: some View {
        VStack(spacing: 30){
            HStack(spacing: 30){
                Text(titlebind)
                    .font(.title)

                Text("Amount: " + String(amountbind))
                    .font(.title)
            }
            Text(descbind)
                .contextMenu{
                    Button{
                        UIPasteboard.general.string = descbind
                    }label:{
                        HStack{
                            Text("copy")
                            Spacer()
                            Image(systemName: "doc.on.doc")
                        }
                    }
                }
            Form{
                Stepper("Amount:", value: $amountbind)
                
            }
        }
    }
}

struct ThingView_Previews: PreviewProvider {
    static var previews: some View {
        ThingView(amountbind: .constant(12), descbind: .constant("12"), titlebind: .constant("12"))
    }
}
