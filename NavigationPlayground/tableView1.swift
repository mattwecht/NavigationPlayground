//
//  tableView1.swift
//  NavigationPlayground
//
//  Created by scholar on 4/22/23.
//

import SwiftUI

struct tableView1: View {
    private var colorsArray: [Color] = [ .yellow, .green, .orange, .indigo, .teal]//creates array that holds colors

    var body: some View {
        List (colorsArray, id: \.self) {//gives access to array that references its own content 
            selectColor in
            NavigationLink(destination: selectColor .ignoresSafeArea() ){
                Text(selectColor.description)
            }//allows one to click on items, ignore safe area makes the color the whole screen.
        }//end of list
        .listStyle(.plain)//gets rid of gray background
        .navigationTitle("sample list")//changes the title at the top of the screen
    }
}

struct tableView1_Previews: PreviewProvider {
    static var previews: some View {
        tableView1()
    }
}
