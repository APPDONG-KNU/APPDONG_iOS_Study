//
//  AnimalViewModel.swift
//  AnimalKR
//
//  Created by Bokyung on 2023/04/25.
//

import Foundation

class AnimalViewModel: ObservableObject {
    // property
    @Published var animals: [Animal] = Bundle.main.decode("animals.json")
    @Published var coverImages: [CoverImage] = Bundle.main.decode("covers.json")
}
