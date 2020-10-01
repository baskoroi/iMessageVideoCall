//
//  PracticeMatchView.swift
//  iMessageVideoCall
//
//  Created by Baskoro Indrayana on 10/01/20.
//

import SwiftUI

struct PracticeMatchViewModel {
    let imageURL: String
    let firstName: String
    let age: Int
    let occupation: String
    let aboutUser: String
}

struct PracticeMatchView: View {
    
    let viewModel: PracticeMatchViewModel
    
    var body: some View {
        VStack {
            Text("We have found you a match!")
                .font(.headline)
            Image(viewModel.imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(100)
                .clipped()
            Text("\(viewModel.firstName), \(viewModel.age)").font(.title)
            Text(viewModel.occupation)
            Text(viewModel.aboutUser)
        }
    }
}

struct PracticeMatchView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeMatchView(viewModel: PracticeMatchViewModel(
            imageURL: "andy",
            firstName: "Andy",
            age: 30,
            occupation: "Marketing manager",
            aboutUser: "Loves bicycle and football"
        ))
    }
}
