//
//  WorkoutDetailView.swift
//  HarbourFitness
//
//  Created by muhammed thalal on 13/06/22.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    var workout: Workout!
    
    var body: some View {
        VStack{
            Text(workout.day)
                .font(.largeTitle)
            Text(workout.bodyPart)
                .font(.largeTitle)
            
            List(workout.routine, id: \.self){ exercise in
                Text(exercise)
                
            }
        }
    }
}

struct WorkoutDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(workout: Workout(day: "Monday", bodyPart: "Abs", image: "Arms", routine: ["waemup", "plank", "situp"]))
    }
}
