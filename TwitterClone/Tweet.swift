//
//  Tweet.swift
//  TwitterClone
//
//  Created by Mustafa on 14.02.2021.
//

import Foundation

struct Tweet: Identifiable {
    let id = UUID()
    let username: String
    let text: String
    let numOfComments: Int
    let numOfLikes: Int
    let numOfRetweets: Int
}
