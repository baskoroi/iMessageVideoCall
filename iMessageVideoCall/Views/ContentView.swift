//
//  ContentView.swift
//  iMessageVideoCall
//
//  Created by Baskoro Indrayana on 10/01/20.
//

import SwiftUI

struct ContentView: View {
    
    var mockMatchViewModel = PracticeMatchViewModel(
        imageURL: "andy",
        firstName: "Raka",
        age: 30,
        occupation: "Marketing manager",
        aboutUser: "Loves bicycle and football"
    )
    
    var body: some View {
        VStack {
            Spacer()
            PracticeMatchView(viewModel: mockMatchViewModel)
                .padding(.bottom, 30)
                
            Button(action: {
                callViaFaceTime()
            }, label: {
                Image(systemName: "phone.fill")
                    .resizable()
                    .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 16)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(32)
            })
            Spacer()
        }
    }
    
    private func callViaFaceTime(at emailAddress: String = "rakawidyap@gmail.com") {
        if let faceTimeURL = URL(string: "facetime://\(emailAddress)") {
            
            if UIApplication.shared.canOpenURL(faceTimeURL) {
                
                UIApplication.shared.open(faceTimeURL)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
            .previewLayout(.device)
    }
}
