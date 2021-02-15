//
//  ContentView.swift
//  TwitterClone
//
//  Created by Mustafa on 14.02.2021.
//

import SwiftUI

struct ContentView: View {
    
    let twitterBlue = UIColor(red: 0.19, green: 0.56, blue: 0.93, alpha: 1.00)
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(twitterBlue).edgesIgnoringSafeArea(.all)
                VStack {
                    HStack {
                        Image("logo")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                            .aspectRatio(contentMode: .fill)
                            .padding(.horizontal)
                        Spacer()
                        }
                    Spacer()
                    HStack {
                        Text("Welcome to Twitter")
                            .font(.system(size: 50, weight: Font.Weight.bold, design: Font.Design.default))
                            .foregroundColor(.white)
                        Spacer()
                    }.padding()
                    HStack {
                        Text("See what's happening in the world right now")
                            .font(.system(size: 16, weight: Font.Weight.bold, design: Font.Design.default))
                            .padding()
                            .foregroundColor(.white)
                        Spacer()
                    }
                    Spacer()
                        VStack {
                            HStack{
                                NavigationLink(
                                    destination: TweetsView().navigationBarBackButtonHidden(true).navigationBarTitle("Tweets"),
                                    label: {
                                        Text("Sign up")
                                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .font(.system(size: 16, weight: .bold))
                                            .padding(.vertical)
                                    })
                            
                            }
                            .padding(.horizontal)
                            .background(Color.white)
                            .cornerRadius(120)
                            HStack {
                                NavigationLink(
                                    destination: TweetsView(),
                                    label: {
                                        Text("Login")
                                            .frame(minWidth: 0, maxWidth: .infinity)
                                            .font(.system(size: 16, weight: .bold))
                                            .padding(.vertical)
                                            .foregroundColor(.white)
                                    })
                            }.padding()
                        }.padding()
                }
            }
            
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
