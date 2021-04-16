//
//  ContentView.swift
//  MyTimer
//
//  Created by administrator on 2021/04/03.
//

import SwiftUI

struct ContentView: View {
    @State var timerHandler : Timer?
    @state var count = 0
    @AppStorage("timer_value") var timerValue = 10
    var body: some View {
        NavigationView{
            ZStack{
                Image("backgroundTimer")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                VStack(spacing:30.0){
                    Text("残り10秒")
                        .font(.largeTitle)
                    HStack{
                        Button(action: {})
                        {
                    Text("スタート")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 140, height: 140)
                        .background(Color("startColor"))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                        Button(action: {})
                        {
                    Text("ストップ")
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 140, height: 140)
                        .background(Color("stopColor"))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            }
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

