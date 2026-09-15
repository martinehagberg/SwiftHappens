//
//  Movie.swift
//  SwiftHappens
//
//  Created by Martine Hagberg on 01/09/2026.
//

import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
    
    let title: String
    let year: Int
    let posterURL: String
    let summary: String
    let rating: Double
    let actors: [String]
}

let movies: [Movie] = [
    
    Movie(title: "The Odyssey", year: 2026, posterURL: "https://media.themoviedb.org/t/p/w440_and_h660_face/5rhTDKUhPYvpdQIijFIs5VoWsON.jpg", summary: "Odysseus, the legendary King of Ithaca, embarks on a long and perilous journey home following the Trojan War. Throughout his voyage, he is forced to confront the whims of gods, mythological monsters, and trials that stretch both his cunning and his humanity to the breaking point.", rating: 8.0, actors: ["Matt Damon", "Tom Holland", "Anne Hathaway", "Robert Pattinson", "Himesh Patel"]),
    
    Movie(title: "Interstellar", year: 2014, posterURL: "https://media.themoviedb.org/t/p/w440_and_h660_face/nrSaXF39nDfAAeLKksRCyvSzI2a.jpg", summary: "The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.", rating: 8.5, actors: ["Matthew McConaughey", "Anne Hathaway", "Michael Caine", "Jessica Chastain", "Casey Affleck"]),
    
    Movie(title: "How to Lose a Guy in 10 Days", year: 2003, posterURL: "https://media.themoviedb.org/t/p/w440_and_h660_face/2dlftyPz7mTYbrsPvTogyFmYd7d.jpg", summary: "It's the battle of wills, as Andie needs to prove she can dump a guy in 10 days, whereas Ben needs to prove he can win a girl in 10 days. Now, the clock is ticking—and the wildly entertaining comedy smash is off and running in this irresistible tale of sex, lies and outrageous romantic fireworks!", rating: 6.9, actors: ["Kate Hudson", "Matthew McConaughey", "Adam Goldberg", "Bebe Neuwirth"]),
    
    Movie(title: "Coyote Ugly", year: 2000, posterURL: "https://media.themoviedb.org/t/p/w440_and_h660_face/xYM0laKrEqjiRSQNvqRrXPXN3iL.jpg", summary: "Graced with a velvet voice, 21-year-old Violet Sanford heads to New York to pursue her dream of becoming a songwriter only to find her aspirations sidelined by the accolades and notoriety she receives at her day job as a barmaid at Coyote Ugly. The Coyotes as they are affectionately called tantalize customers and the media alike with their outrageous antics, making Coyote Ugly the watering hole for guys on the prowl.", rating: 6.3, actors: ["Piper Perabo", "Maria Bello", "Bridget Moynahan", "Tyra Banks"]),
    
    Movie(title: "The Devil Wears Prada", year: 2006, posterURL: "https://media.themoviedb.org/t/p/w440_and_h660_face/hgwdSjLjXsFJbCHIzaKRj2hMaIF.jpg", summary: "En nyutdannet journalist oppdager sin egen styrke – og stil – mens hun lider for å lykkes som assistent for et motemagasins tyranniske redaktør.", rating: 7.4, actors: ["Meryl Streep", "Anne Hathaway", "Emily Blunt", "Stanley Tucci"])
]

