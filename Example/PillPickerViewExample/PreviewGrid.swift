//
// https://github.com/atacan
// 05.08.23
	

import SwiftUI
import PillPickerView

struct PreviewGrid: View {
    @State private var selectedGenres: [GenreEnum] = []
    var body: some View {
        VStack(alignment: .center) {
            PillPickerGridView(items: GenreEnum.allCases, selectedPills: $selectedGenres)
                .pillLeadingIcon(Image(systemName: "popcorn"))
                                            .pillTrailingIcon(Image(systemName: "checkmark"))
                                            .pillTrailingOnlySelected(true)
        } // <-VStack
        
        Button {
            dump(selectedGenres)
        } label: {
            Text("print out")
        } // <-Button
    }
}

struct PreviewGrid_Previews: PreviewProvider {
    static var previews: some View {
        PreviewGrid()
    }
}

enum GenreEnum: String, CaseIterable, Pill {
    case action
    case adventure
    case animation
    case comedy
    case crime
    case drama
    case fantasy
    case historical
    case horror
    case mystery
    case romance
    case scifi
    case thriller
    case western

    var title: String {
        switch self {
        case .action:
            return "Action"
        case .adventure:
            return "Adventure"
        case .animation:
            return "Animation"
        case .comedy:
            return "Comedy"
        case .crime:
            return "Crime"
        case .drama:
            return "Drama"
        case .fantasy:
            return "Fantasy"
        case .historical:
            return "Historical"
        case .horror:
            return "Horror"
        case .mystery:
            return "Mystery"
        case .romance:
            return "Romance"
        case .scifi:
            return "Sci-Fi"
        case .thriller:
            return "Thriller"
        case .western:
            return "Western"
        }
    }
}
