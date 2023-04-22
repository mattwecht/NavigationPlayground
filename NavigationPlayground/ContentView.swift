//
//  ContentView.swift
//  NavigationPlayground
//
//  Created by scholar on 4/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationStack{//allows for transitions (places items in the stack)
            VStack(){
                Text("Want to know why I was fired from the Cal factory?")

                /*
                 NavigationLink(destination: Text("I took a day off...")){
                    Text("YES!!")
                }//this tells us where to go once clicked
                
                NavigationLink(destination: Text("You are a boring person")){
                    Text("No")
                }//sends to a screen composed of a piece of text "you are a boring person"
                */
                NavigationLink(destination: SecondView()){
                    Text("Obviously")
                }//tells us to the file called SecondView once clicked
                
            }//end of vstack
            
            .toolbar(){
                NavigationLink(destination: ThirdView()){
                    Text("Fun facts")
                }
                NavigationLink(destination: tableView1()){
                    Text("Table")
                }
            }//creates a bar you can edit
            
            .navigationTitle("Question")//changes the back button on next screen
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)//hides the bar
        }//end of nav stack
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
