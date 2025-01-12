//
//  Movie.swift
//  WhyNotTry
//
//  Created by Aishwarya M on 07/01/25.
//

struct Movie : Hashable, Codable{
    var name : String
    var language : String
    var imageName : String
    var year : String
    var description: String
}

var movies : Array<Movie> = Array()

func createMovies() ->  Array<Movie>{
    movies.append(Movie(name: "Mufasa", language: "English", imageName: "Mufasa", year: "2024", description: "Mufasa, a cub lost and alone, meets a sympathetic lion named Taka, the heir to a royal bloodline. The chance meeting sets in motion an expansive journey of a group of misfits searching for their destiny."))
    
    movies.append(Movie(name: "Moana 2", language: "English", imageName: "Moana", year: "2024", description: "After receiving an unexpected call from her wayfinding ancestors, Moana must journey to the far seas of Oceania and into dangerous, long-lost waters for an adventure unlike anything she's ever faced."))
    
    movies.append(Movie(name: "Inside Out 2", language: "English", imageName: "Inside out", year: "2024", description: "A sequel that features Riley entering puberty and experiencing brand new, more complex emotions as a result. As Riley tries to adapt to her teenage years, her old emotions try to adapt to the possibility of being replaced."))
    
    movies.append(Movie(name: "Flow", language: "English", imageName: "Flow", year: "2024", description: "Cat is a solitary animal, but as its home is devastated by a great flood, he finds refuge on a boat populated by various species, and will have to team up with them despite their differences."))
    
    movies.append(Movie(name: "The Wild Robot", language: "English", imageName: "The wild robot", year: "2024", description: "After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island's animals and cares for an orphaned baby goose."))
    
    movies.append(Movie(name: "The Incredibles", language: "English", imageName: "incredibles", year: "2004", description: "While trying to lead a quiet suburban life, a family of undercover superheroes are forced into action to save the world."))
    
    movies.append(Movie(name: "Ratatouille", language: "English", imageName: "ratatouille", year: "2001", description: "A rat who can cook makes an unusual alliance with a young kitchen worker at a famous Paris restaurant."))
    
    movies.append(Movie(name: "Tangled", language: "English", imageName: "tangled", year: "2010", description: "The magically long-haired Rapunzel has spent her entire life in a tower, but now that a runaway thief has stumbled upon her, she is about to discover the world for the first time, and who she really is."))
    
    movies.append(Movie(name: "Your Name", language: "English", imageName: "your name", year: "2016", description: "Two teenagers share a profound, magical connection upon discovering they are swapping bodies. Things manage to become even more complicated when the boy and girl decide to meet in person."))
    
    movies.append(Movie(name: "Zootopia", language: "English", imageName: "zootopia", year: "2016", description: "In a city of anthropomorphic animals, a rookie bunny cop and a cynical con artist fox must work together to uncover a conspiracy."))
    
   // movies.append(Movie(name: <#T##String#>, language: <#T##String#>, imageName: <#T##String#>, year: <#T##String#>, description: <#T##String#>))
    return movies
}


func getDefaultMovie() -> Movie{
    return Movie(name: "Mufasa", language: "English", imageName: "Mufasa", year: "2024", description: "Mufasa, a cub lost and alone, meets a sympathetic lion named Taka, the heir to a royal bloodline. The chance meeting sets in motion an expansive journey of a group of misfits searching for their destiny.")
}
