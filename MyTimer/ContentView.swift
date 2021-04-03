//
//  ContentView.swift
//  MyTimer
//
//  Created by administrator on 2021/04/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
        VStack{Text("タイマー表示")}
            .navigationBarItems(trailing:
            NavigationLink(
                destination: SettingView())
                {Text("秒数設定")}
            )
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

