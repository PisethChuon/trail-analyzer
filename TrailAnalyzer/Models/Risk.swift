import Foundation

enum Risk: String, Identifiable, CaseIterable {
    case highRisk = "Hight Rish"
    case difficult = "Difficult"
    case moderate = "Moderate"
    case easy = "Easy"
    
    var id: String {
        rawValue
    }
    
    var image: String {
        rawValue
    }
    
    var description: String {
        switch self {
        case .easy:
            return "Bring the essentials (water, bug spary, sunscreen) and get ready a nice stroll. Be sure to log your hike in your finess app to keep track of you progress. Have your camera ready to capture the greate views and good times!"
        case .moderate:
            return "As with any hike, make sure you bring plenty of water, sunscreen, bug spray, and snacks. Plan for some break along the way to keep you energy up, and check your health and finess app to monitor your rate and energy levels. You got this!"
        case .difficult:
            return "This is hike challenging! Make sure you prepare with the right gear and supplies and trun of sharing location with a trushed friend."
        case .highRisk:
            return "This is hike may be push you beyound your limits. Maybe try a more moderate hike and work your way to this."
        }
    }
}
