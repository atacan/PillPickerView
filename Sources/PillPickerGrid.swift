//
// https://github.com/atacan
// 05.08.23

import SwiftUI

public struct PillPickerGridView<T: Pill>: View {
    // MARK: - Properties

    /// Options for configuring each individual PillView
    public var options = PillOptions()

    /// Provider for the selectable items, passed as a
    /// @Binding list of elements conforming to PillEnum
    @Binding var selectedPills: [T]

    /// List of items that will be available to choose from
    let items: [T]

    // MARK: - Initialization

    public init(
        items: [T],
        selectedPills: Binding<[T]>
    ) {
        self.items = items
        self._selectedPills = selectedPills
    }

    // MARK: - Body

    public var body: some View {
        switch options.gridAxis {
        case .horizontal:
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(items, id: \.self) { item in
                        PillView(options: options, item: item, selectedPills: $selectedPills)
                    }
                }
            }  // <-ScrollView
        case .vertical:
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    ForEach(items, id: \.self) { item in
                        PillView(options: options, item: item, selectedPills: $selectedPills)
                    }
                }
            }  // <-ScrollView
        default:
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(items, id: \.self) { item in
                        PillView(options: options, item: item, selectedPills: $selectedPills)
                    }
                }
            }  // <-ScrollView
        }
    }
}
