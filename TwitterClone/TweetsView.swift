//
//  TweetsView.swift
//  TwitterClone
//
//  Created by Mustafa on 14.02.2021.
//

import SwiftUI



struct TweetsView: View {
    let twitterBlue = UIColor(red: 0.19, green: 0.56, blue: 0.93, alpha: 1.00)

    let tweets: [Tweet] = [
        Tweet(username: "Mark Zuckerberg", text: "Hello guys use facebook 😡", numOfComments: 2, numOfLikes: 5, numOfRetweets: 10),
        Tweet(username: "Jeff Bezos", text: "Shut up ı'm richer 💰", numOfComments: 56, numOfLikes: 18, numOfRetweets: 18),
        Tweet(username: "Elon Musk", text: "Go to spacee 🚀🚀🚀 ", numOfComments: 7, numOfLikes: 19, numOfRetweets: 8),
        Tweet(username: "Larry Page", text: "What a beautiful day 🌞", numOfComments: 9, numOfLikes: 37, numOfRetweets: 21),
        Tweet(username: "Warren Buffett", text: "Did u see news ? 🧐", numOfComments: 94, numOfLikes: 89, numOfRetweets: 61),
        Tweet(username: "Jamie Dimon", text: "What's up man", numOfComments: 14, numOfLikes: 25, numOfRetweets: 11),
        Tweet(username: "Rex Tillerson", text: "😍😍😍 This is nice clone", numOfComments: 124, numOfLikes: 481, numOfRetweets: 246),
        Tweet(username: "Doug McMillon", text: "Hello guys", numOfComments: 54, numOfLikes: 35, numOfRetweets: 34)
    ]
    
    @State var selectedTab = 0
    
    var body: some View {
        ZStack {
            TabView() {
                FeedView(tweets: tweets).tabItem {
                    Image(systemName: "house")
                }.tag(0)
                Text("Search").tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
                Text("Notification").tabItem {
                    Image(systemName: "bell")
                }.tag(2)
                Text("Messsage").tabItem {
                    Image(systemName: "envelope")
                }.tag(3)
            }.accentColor(Color(twitterBlue))
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "pencil")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                    }
                    .background(Color(twitterBlue))
                    .mask(Circle())
                    .shadow(radius: 5)
                    .padding(.bottom, 65)
                    .padding(.trailing)
                }
            }
        }
    }
}

struct FeedView: View {
    let tweets: [Tweet]
    
    var body: some View {
        NavigationView {
            List(tweets) { tweet in
                TweetView(tweet: tweet)
            }
            .navigationBarHidden(true)
        }
    }
}

struct TweetView: View {
    let tweet: Tweet
    let twitterBlue = UIColor(red: 0.19, green: 0.56, blue: 0.93, alpha: 1.00)

    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 55))
                .foregroundColor(Color(twitterBlue))
            
            VStack(alignment: .leading) {
                Text(tweet.username)
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .padding(.vertical, 2)
                Text(tweet.text)
                    .padding(.bottom, 2)
                HStack {
                    Image(systemName: "message")
                    Text("\(tweet.numOfComments)")
                    Spacer()
                    Image(systemName: "arrow.2.squarepath")
                    Text("\(tweet.numOfRetweets)")
                    Spacer()
                    Image(systemName: "heart")
                    Text("\(tweet.numOfLikes)")
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                }
            }
        }
    }
}


struct TweetsView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsView()
    }
}
