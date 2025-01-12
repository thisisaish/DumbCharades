//
//  ContentView.swift
//  WhyNotTry
//
//  Created by Aishwarya M on 07/01/25.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    @State var movie : Movie
    @State private var timer = Timer.publish(every: 20, on: .main, in: .default)
    @State private var timerHandler: Cancellable?
    @State private var repeatTimer: Bool = true
    
    let defaultMovie : Movie = getDefaultMovie()
    
    var body: some View {
        ZStack {
            let image = UIImage(imageLiteralResourceName: movie.imageName)
            ZStack {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
                    .position(x: 201, y: 180)
            }
                
            Rectangle()                         // Shapes are resizable by default
                    .foregroundColor(.clear)        // Making rectangle transparent
                    .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .center))
                   
            VStack {
                VStack {
                    Text(movie.name)
                        .font(.system(size: 45))
                        .bold()
                        .foregroundColor(.white)
                    
                    HStack(spacing: 50) {
                        Text(movie.language)
                            .foregroundStyle(.gray)
                        Text(movie.year)
                            .foregroundStyle(.gray)
                    }
                    
                    Text(movie.description)
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 255, green: 253, blue: 236))
                        .padding(20)
                        .multilineTextAlignment(.center)
                }
                .frame(maxHeight: .maximum(100, 500), alignment: .center)
                
                Button {
                    movie = createMovies().randomElement()  ?? defaultMovie
                    setTimer()
                } label:{
                    Text("Next Movie")
                        .frame(maxWidth: .infinity)
                }
                .padding(25)
                .foregroundColor(.white)
                .background(Color("buttonColor"))
                .clipShape(.rect(cornerRadius: 20))
            }
            .frame(maxHeight: .infinity, alignment: .bottom)
            .padding(15)
            .onAppear(perform: {
                setTimer()
            })
            .onReceive(timer) { timer in
                if !repeatTimer { cancelTimer() }
                print("Timer triggered")
                movie = createMovies().randomElement()  ?? defaultMovie
              }
        }
    }
    
    func setTimer() {
        timerHandler?.cancel()
        timer = Timer.publish(every: 20, on: .main, in: .default)
        timerHandler = timer.connect()
    }
    
    func cancelTimer() {
        timerHandler?.cancel()
    }
}

#Preview {
    ContentView(movie: createMovies().randomElement() ?? getDefaultMovie())
}
