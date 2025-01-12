//
//  HomeViewModel.swift
//  FitnessApp
//
//  Created by Daniel Richardson on 1/12/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    var calories : Int = 123
    var active : Int = 52
    var stand : Int = 8
    
    var mockActivities = [
        Activity(id: 0, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .green, amount: "9,382"),
        Activity(id: 1, title: "Today", subtitle: "Goal 1,000", image: "figure.walk", tintColor: .red, amount: "812"),
        Activity(id: 2, title: "Today steps", subtitle: "Goal 12,000", image: "figure.walk", tintColor: .blue, amount: "9,382"),
        Activity(id: 3, title: "Today steps", subtitle: "Goal 50,000", image: "figure.run", tintColor: .purple, amount: "55,812")
    ]
    
    var mockWorkouts = [
        Workout(id: 0, title: "Running", image: "figure.run", duration: "51 mins", date: "Aug 1", calories: "512 kcal", tintColor: .cyan),
        Workout(id: 1, title: "Strength Training", image: "figure.run", duration: "51 mins", date: "Aug 1", calories: "512 kcal", tintColor: .red),
        Workout(id: 2, title: "Walk", image: "figure.walk", duration: "5 mins", date: "Aug 11", calories: "512 kcal", tintColor: .purple),
        Workout(id: 3, title: "Running", image: "figure.run", duration: "51 mins", date: "Aug 1", calories: "512 kcal", tintColor: .green)
    ]
    
}
