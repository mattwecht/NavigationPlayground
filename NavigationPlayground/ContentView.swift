//
//  ContentView.swift
//  NavigationPlayground
//
//  Created by scholar on 4/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationStack{
            VStack(){
                Text("Want to know why I was fired from the Cal factory?")
                
                NavigationLink(destination: Text("I took a day off...")){
                    Text("YES!!")
                }//this tells us where to go once clicked
                
                NavigationLink(destination: Text("You are a boring person")){
                    Text("No")
                }
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
