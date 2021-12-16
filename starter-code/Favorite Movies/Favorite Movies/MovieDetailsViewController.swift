import Foundation
import UIKit

public enum MoviesList {
    case all
    case favorites
}

public class MovieDetailsViewController: UIViewController {
    @IBOutlet var backgroundView: UIView!
    @IBOutlet var blurEffectView: UIVisualEffectView!
    @IBOutlet var movieNameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!

    private var movies: [Movie] = []
    private var currentMovie: Movie? = nil

    override public func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    public func setup() {
        for movie in Movies.allCases {
            self.movies.append(movie.movie())
        }
        self.update(movie: self.movies[0])
    }
    
//    private func indexForMovie(movie: Movie?) -> Int? {
//        guard movie != nil, let index = self.movies.firstIndex(where: { $0 == movie }) else {
//            return nil
//        }
//        return index
//    }

    private func update(movie: Movie) {

    }
}

public enum ColorMode {
    case Dark, Light, Colorful
}

public struct Movie {
    var colorMode: ColorMode
    var movieName: String
    var moviePosterFilePath: String
    var rating: Int
}

extension Movie: Equatable {
    
}

public enum Movies: String, CaseIterable {
    case twelveYearsASlave = "12 Years A Slave"
    case dunkirk = "Dunkirk"
    case grandBudapestHotel = "Grand Budapest Hotel"
    case harryPotter = "Harry Potter"
    case indianaJones = "Indiana Jones"
    case ladyBird = "Lady Bird"
    case madMax = "Mad Max Fury Road"
    case moonlight = "Moonlight"
    case onceUponATime = "Once Upon A Time In Hollywood"
    case parasite = "Parasite"
    case starWars = "Star Wars: A New Hope"

    private func movieName() -> String {
        return self.rawValue
    }
    
    private func folderName() -> String {
        return "MoviePosters"
    }
    
    private func posterImageFileName() -> String {
        return self.movieName().replacingOccurrences(of: " ", with: "").replacingOccurrences(of: ":", with: "")
    }
    
    private func posterImagePath() -> String {
        return "\(folderName())/\(posterImageFileName()).jpg"
    }
    
    private func rating() -> Int {
        switch self {
        case .twelveYearsASlave: return 10
        case .dunkirk: return 9
        case .grandBudapestHotel: return 10
        case .harryPotter: return 7
        case .indianaJones: return 7
        case .ladyBird: return 7
        case .madMax: return 6
        case .moonlight: return 9
        case .onceUponATime: return 8
        case .parasite: return 6
        case .starWars: return 8
        }
    }
    
    private func colorMode() -> ColorMode {
        switch self {
        case .twelveYearsASlave:
            return .Dark
        case .dunkirk:
            return .Light
        case .grandBudapestHotel:
            return .Dark
        case .harryPotter:
            return .Dark
        case .indianaJones:
            return .Dark
        case .ladyBird:
            return .Light
        case .madMax:
            return .Light
        case .moonlight:
            return .Dark
        case .onceUponATime:
            return .Light
        case .parasite:
            return .Dark
        case .starWars:
            return .Dark
        }
    }

    public func movie() -> Movie {
        return Movie(colorMode: self.colorMode(), movieName: self.movieName(), moviePosterFilePath: self.posterImagePath(), rating: self.rating())
    }
}

