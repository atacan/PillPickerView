//
// https://github.com/atacan
// 05.08.23


import SwiftUI
import PillPickerView

struct PreviewGrid: View {
    //    @State private var selectedGenres: [GenreEnum] = []
    @State private var selectedGenres: [Alphabet] = Alphabet.allCases
    var body: some View {
        VStack {
            Text("Hello ")
                .font(.title)
            //            ScrollView(.vertical, showsIndicators: true) {
            //            Spacer()
            VStack(alignment: .center) {
                //            PillPickerView(items: GenreEnum.allCases, selectedPills: $selectedGenres)
                PillPickerView(items: Alphabet.allCases, selectedPills: $selectedGenres)
                    .pillStackStyle(.infiniteScrollStack(itemsPerStack: 26))
                //                .pillLeadingIcon(Image(systemName: "popcorn"))
                                .pillTrailingIcon(Image(systemName: "checkmark"))
                    .pillTrailingOnlySelected(true)
                    .pillMinWidth(20)
                    .pillViewHorizontalSpacing(0)
//                    .pillNormalBackgroundColor(.accentColor.opacity(0.50))
//                    .pillSelectedForegroundColor(.accentColor)
                //                .pillViewVerticalSpacing(0)
                //                .lineSpacing(0)
                Button {
                    dump(selectedGenres)
                } label: {
                    Text("print out")
                } // <-Button
                //            Spacer()
            } // <-VStack
            //            } // <-ScrollView
            .frame(maxHeight: 200)
            Image(systemName: "house")
                .font(.largeTitle)
        }
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

enum Alphabet: String, CaseIterable, Pill {
    case a
    case b
    case c
    case d
    case e
    case f
    case g
    case h
    case i
    case j
    case k
    case l
    case m
    case n
    case o
    case p
    case q
    case r
    case s
    case t
    case u
    case v
    case w
    case x
    case y
    case z
    // german umlauts and sharp s
    case ä, ö, ü, ß
    // turkish
//    case ç, ğ, ı, ö, ş, ü
    // polish
//    case ą, ć, ę, ł, ń, ó, ś, ź, ż
    // spanish
//    case ñ, á, é, í, ó, ú, ü
    // french
//    case à, â, æ, ç, é, è, ê, ë, î, ï, ô, œ, ù, û, ü
    case à, â, æ, è, ê, ë, î, ï, ô, œ, ù, û
    // italian
//    case à, è, é, ì, ò, ó, ù
    case ì, ò
    // portuguese
//    case ã, á, à, â, ç, é, ê, í, ó, õ, ô, ú
    case ã, õ
    // dutch
//    case é, ë, ï, ó, ö, ü


    
    var title: String {
        switch self {
//        case .a:
//            return "A"
//        case .b:
//            return "B"
//        case .c:
//            return "C"
//        case .d:
//            return "D"
//        case .e:
//            return "E"
//        case .f:
//            return "F"
//        case .g:
//            return "G"
//        case .h:
//            return "H"
//        case .i:
//            return "I"
//        case .j:
//            return "J"
//        case .k:
//            return "K"
//        case .l:
//            return "L"
//        case .m:
//            return "M"
//        case .n:
//            return "N"
//        case .o:
//            return "O"
//        case .p:
//            return "P"
//        case .q:
//            return "Q"
//        case .r:
//            return "R"
//        case .s:
//            return "S"
//        case .t:
//            return "T"
//        case .u:
//            return "U"
//        case .v:
//            return "V"
//        case .w:
//            return "W"
//        case .x:
//            return "X"
//        case .y:
//            return "Y"
//        case .z:
//            return "Z"
//        case .ä:
//            return "Ä"
//        case .ö:
//            return "Ö"
//        case .ü:
//            return "Ü"
//        case .ß:
//            return "ß"
//
        default:
            return "\(self)"
        }
    }
}


