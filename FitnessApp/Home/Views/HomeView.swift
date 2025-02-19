//
//  HomeView.swift
//  FitnessApp
//
//  Created by Daniel Richardson on 1/9/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                
                VStack(alignment:.leading){
                    Text("Welcome")
                        .font(.largeTitle)
                        .padding()
                    HStack {
                        
                        Spacer()
                        
                        VStack(alignment:.leading) {
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Calories")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.red)
                                Text("\(viewModel.calories)")
                                    .bold()
                            }
                            .padding(.bottom)
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Active")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.green)
                                Text("\(viewModel.active)")
                                    .bold()
                            }
                            .padding(.bottom)
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Stand")
                                    .font(.callout)
                                    .bold()
                                    .foregroundColor(.blue)
                                Text("\(viewModel.stand)")
                                    .bold()
                            }
                        }
                        
                        Spacer()
                        
                        ZStack {
                            ProgressCircleView(progress: $viewModel.calories, goal: 600, color: .red)
                            ProgressCircleView(progress: $viewModel.active, goal: 60, color: .green)
                                .padding(20)
                            ProgressCircleView(progress: $viewModel.stand, goal: 12, color: .blue)
                                .padding(40)
                            
                        }
                        .padding(.horizontal)
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    HStack {
                        Text("Fitness Activity")
                            .font(.title2)
                        
                        Spacer()
                        
                        Button(
                            action: {
                                print("show more")
                            }, label: {
                                Text("Show more")
                            })
                        .padding(10)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                    }
                    .padding(.horizontal)
                    .padding(.top)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(spacing:20), count: 2)) {
                        ForEach(viewModel.mockActivities, id: \.id) { activity in
                            ActivityCard(activity: activity)
                        }
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Text("Recent Workouts")
                            .font(.title2)
                        
                        Spacer()
                        
                        NavigationLink {
                            EmptyView()
                        } label: {
                            Text("Show more")
                                .padding(10)
                                .foregroundColor(.white)
                                .background(.blue)
                                .cornerRadius(20)
                        }
                    }
                    .padding(.horizontal)
                    
                    LazyVStack {
                        ForEach(viewModel.mockWorkouts, id: \.id) { workout in
                            WorkoutCard(workout: workout)
                        }
                        .padding(.bottom)
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
