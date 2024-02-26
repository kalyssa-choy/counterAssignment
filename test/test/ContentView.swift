//
//  ContentView.swift
//  test
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    
    //the variable that keeps track of the count
    @State private var count: Int = 0
    
    //function that increases the count by 1 if the count is less than 50
    func increaseCount(){
        
        //if statement to check if the count is less than 50
        if count < 50{
            //adding 1 to the count
            count += 1
        }
        
    }
    
    //function that decreases the count by 1 if the count is greater than 0
    func decreaseCount(){
        //if statement to check if the count is greater than 0
        if count > 0{
            //subtracts 1 from the count
            count -= 1
        }
    }
    
    //the body or what is displayed on the screen
    var body: some View {
        //body is defaulted to VStack
        
        //the main text prompting the user to use the buttons
        Text("Click the buttons below to change the counter!")
        
        //displays the counter on the screen
        Text("Count: \(count)")
            //styling the count text to have padding
            .padding()
        
        //for formatting the buttons horizonatally
        HStack{
            
            //increment button
            Button(action: {
                //calling the increaseCount function to add one to the count when increment button is clicked
                increaseCount()
                
                //putting text and styling the button
            }, label: {
                //the increment button's text
                Text("Increment")
                //styling the increment button
                    //space around the increment button text
                    .padding()
                    //changing the color of the increment button to blue
                    .background(Color.blue)
                    //changing the color of the increment button text to white
                    .foregroundColor(.white)
                    //rounding the corners of the increment button
                    .cornerRadius(10)
            })
            
            //decrement button
            Button(action: {
                //calling the decreaseCount function to subtract one when decrement button is clicked and if count is greater than 0
                decreaseCount()
                
                //putting text and styling the decrement button
            }, label:{
                //the decrement button's text
                Text("Decrement")
                //styling the decrement button
                    //space around the decrement button text
                    .padding()
                    //changing the color of the decrement button to blue
                    .background(Color.blue)
                    //changing the color of the decrement button text to white
                    .foregroundColor(.white)
                    //rounding the corners of the decrement button
                    .cornerRadius(10)
            })
        }
        
        
        
    }
}

#Preview {
    ContentView()
}



