//
//  ContentView.swift
//  HarbourFitness
//
//  Created by muhammed thalal on 17/02/22.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    let workouts = workoutDate
//    @Environment(\.managedObjectContext) private var viewContext
//
//    @FetchRequest(
//        sortDescriptors: [NSSortDescriptor(keyPath: \Item.timestamp, ascending: true)],
//        animation: .default)
//    private var items: FetchedResults<Item>

    var body: some View {
        NavigationView {
            
            VStack(alignment: .leading){
                
                ZStack {
                    Image("fitness-workout")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                    
                    VStack{
                        Spacer()
                        
                        Text("Full body Workout")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                        Text("For Beginners")
                            .fontWeight(.regular)
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(width:380)
                    
                }
                .frame(width: 380, height: 300)
                .cornerRadius(20)
                .clipped()
                .shadow(radius: 5)
//                .padding(.top,20)
                .padding()
                
                
                Text("Weekly plan")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 20) {
                            ForEach(workouts){ Workout in
                                
                                
//                           day card
                                NavigationLink(destination: WorkoutDetailView(workout: Workout)) {
                                    ZStack {
                                         Image(Workout.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(height: 220)
                                        
                                        
//                           vertical stack - where object are stacked vertically
                                            VStack{

                                                Spacer()
                                                            
                                                Text(Workout.day)
                                                    .font(.title)
                                                    .fontWeight(.semibold)
                                                    .foregroundColor(.white)
                                                Text(Workout.bodyPart)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(.white)
                                            }
                                            .padding()
                                            .frame(width:150)
                                        }
                                        .frame(width: 150, height: 220)
                                        .clipped()
                                        .cornerRadius(20)
                                    .shadow(radius: 5)
                                }
                            }
                          
                        }
                    .padding()
                    }
                   .offset(x: 0, y: -30)
                
                Spacer()
            }
            .navigationTitle("Home Workouts")
        }
    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }


struct Workout: Identifiable{
    
    var id = UUID()
    
//    variable name with their resception type
    var day : String
    var bodyPart : String
    var image: String
    var routine: [String]
}

let workoutDate = [
    Workout(day: "Monday", bodyPart: "chest", image: "push-ups", routine: ["WarmUp", "push-up","cooldown"]),
    Workout(day: "Tuesday", bodyPart: "back", image: "fitness-workout", routine: ["Warmup","pull-down","cool down"]),
    Workout(day: "Wednesday", bodyPart: "Arms", image: "Arms", routine: ["Warmup","Curls","cool down"])
   

]


//var is indicative of some data that will be changing over time
//let is indicative of some data that will no be changing
    
    
    
    
    
    
    
    
    





    
        
//        NavigationView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp!, formatter: itemFormatter)")
//                    } label: {
//                        Text(item.timestamp!, formatter: itemFormatter)
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//            Text("Select an item")
//        }
//    }

//    private func addItem() {
//        withAnimation {
//            let newItem = Item(context: viewContext)
//            newItem.timestamp = Date()
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }

//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            offsets.map { items[$0] }.forEach(viewContext.delete)
//
//            do {
//                try viewContext.save()
//            } catch {
//                // Replace this implementation with code to handle the error appropriately.
//                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//                let nsError = error as NSError
//                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//            }
//        }
//    }
//}
//
//private let itemFormatter: DateFormatter = {
//    let formatter = DateFormatter()
//    formatter.dateStyle = .short
//    formatter.timeStyle = .medium
//    return formatter
//}()

