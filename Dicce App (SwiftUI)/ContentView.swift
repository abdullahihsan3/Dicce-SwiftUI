//
//  ContentView.swift
//  Dicce App (SwiftUI)
//
//  Created by Abdullah Ihsan on 03/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    var body: some View {
        ZStack {
        Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .aspectRatio( contentMode: .fill)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                Spacer()
                Button {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                } label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                       
                }
                .background(.red)
                .padding(.all)


            }
           
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n:Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio( contentMode: .fit)
            .frame(width:150,height:150)
            .padding(.all)
       
    }
}
