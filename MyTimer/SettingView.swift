//
//  SettingView.swift
//  MyTimer
//
//  Created by administrator on 2021/04/03.
//

import SwiftUI

struct SettingView: View {
    @State var timeValue = 10
    var body: some View {
        ZStack{
            Color("backgroudSetting")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
       
            VStack{
                Spacer()
                Text("\(timeValue)秒")
                    .font(.largeTitle)
                Spacer()
                Picker(selection: $timeValue, label: Text("選択")){
                    Text("10").tag(10)
                    Text("20").tag(30)
                    Text("30").tag(30)
                    Text("40").tag(40)
                    Text("50").tag(50)
                    Text("60").tag(60)
                }
              }
            }
        }
    }

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
