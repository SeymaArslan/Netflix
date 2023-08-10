//
//  Tv.swift
//  Netflix Clone
//
//  Created by Seyma on 10.08.2023.
//

import Foundation

struct TrendingTvResponse: Codable {
    let results: [Tv]
}

struct Tv: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}

/*
{
adult = 0;
"backdrop_path" = "/8KtphbDARuisrYYr7DVELnJLRWA.jpg";
"first_air_date" = "2023-08-09";

id = 126485;
"media_type" = tv;
name = Moving;

"original_language" = ko;
"original_name" = "\Ubb34\Ube59";
overview = "Children who live in hiding with superpowers, along with their parents who live with painful secrets of the past, face enormous dangers together";
popularity = "67.54000000000001";
"poster_path" = "/vf9SNXNAFqzKBGksFwrXhkg9cb7.jpg";
"vote_average" = 9;
"vote_count" = 2;
},
*/
