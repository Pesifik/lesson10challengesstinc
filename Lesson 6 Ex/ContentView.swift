//
//  ContentView.swift
//  Lesson 6 Ex
//
//  Created by Teh Tian Cheng on 14/8/23.
//

import SwiftUI
import Foundation
struct Todo: Hashable, Identifiable {
    var title: String
    var amount: Int
    var desc: String
    var id = UUID()
}

struct ContentView: View {
    
    @State var listOfTodos = [Todo(title: "Meat", amount: 3, desc: "A bunch of meat"), Todo(title: "Cheese", amount: 5, desc: "Cheese for sandwich")]
    @State var stringhi = "string"
    
    var body: some View {
        NavigationStack{
            List {
                ForEach($listOfTodos) { todo in
                    NavigationLink{
                        ThingView(amountbind: todo.amount, descbind: todo.desc, titlebind: todo.title)
                    }label:{
                        Text(todo.title.wrappedValue)
                        
                        Spacer()
                    }
                    
                    
                }
            }
            .navigationTitle("Shopping List")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
