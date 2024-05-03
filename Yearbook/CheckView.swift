import Foundation
import SwiftUI


struct CheckView: View {
    
    @ObservedObject var viewModel = CheckViewModel()
    @State var array = [626130,625106]
    @State var StudentID = ""
    @State var purchased:Bool = true
    @State var text = ""
    @State var showingAlert = false
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack{
                Color.gray
                    .ignoresSafeArea()
                
                VStack {
                    Group {
                        VStack() {
                            Text("Check for Yearbook")
                            Text("Purchase")
                        }
                        .font(.system(size: 60))
                        .font(.title)
                        .foregroundStyle(.white)
                        .shadow(radius: 20)
                        .offset(y:-50)
                    //  .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.1)
                        .fontWeight(.bold)
                        .padding()
                    }
                    .padding()
                    .fontWeight(.bold)
                    .font(.custom("Arial", fixedSize: 35))
                    .foregroundStyle(.white)
                    .frame(width: geometry.size.width * 0.95, height: geometry.size.height * 0.2, alignment: .center)
                    
                    
                    TextField("Enter Student ID", text: $StudentID)
                        .textFieldStyle(.roundedBorder)
                        .preferredColorScheme(.light)
//                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 82/255.0, green: 53/255.0, blue: 40/255.0), lineWidth: 4))
                        .frame(width: geometry.size.width * 0.875, height: geometry.size.height * 0.1)
                        .padding()
                        .onSubmit {
                            let answer = checkID(studentID: StudentID)
                            if answer == false {
                                text = "The ID: \(StudentID) has purchased a yearbook, thank you!"
                            } else if answer == true {
                                text = "The ID: \(StudentID) has not purchased a yearbook."
                            }
                            showingAlert =  true
                        }
                    Text(text)
                    //                        .alert("\(text)", isPresented: $showingAlert) {
                    //                            Button("Ok", role: .cancel) { }
                    //                            NavigationLink(destination: BuyView()
                    //                            )
                    //                            {
                    //                                Text("Buy a Yearbook")
                    //                            }
                    //                        }
                    
                    
                    VStack{
                        HStack{
                            Button {
                                let answer = checkID(studentID: StudentID)
                                if answer == false {
                                    text = "The ID: \(StudentID) has purchased a yearbook, thank you!"
                                } else if answer == true {
                                    text = "The ID: \(StudentID) has not purchased a yearbook."
                                }
                                showingAlert =  true
                                StudentID = ""
                                
                            } label: {
                                HStack {
                                    Text("Check ID")
                                        .foregroundColor(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0))
                                }
                                .font(.system(size: geometry.size.height * 0.032))
                                .fontWeight(.bold)
                                .padding()
                                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                                .foregroundColor(.white)
                                .textFieldStyle(.roundedBorder)
                                .background(.white)
                                .cornerRadius(20.0)
                                .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color(red: 82/255.0, green: 53/255.0, blue: 40/255.0), lineWidth: 4))
                            }
                        }
                        //                        .alert("\(text)", isPresented: $showingAlert) {
                        //                            Button("Ok", role: .cancel) { StudentID = "" }
                        //                            NavigationLink(destination: BuyView()) { Text("Buy a Yearbook") }
                        //                            NavigationLink(destination: BuyView()) {
                        //                            }
                        HStack {
                            NavigationLink(destination: BuyView()) {
                                HStack {
                                    Text("Buy yearbook")
                                        .foregroundColor(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0))
                                }
                                .font(.system(size: geometry.size.height * 0.032))
                                .fontWeight(.bold)
                                .padding()
                                .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                                .foregroundColor(.white)
                                .textFieldStyle(.roundedBorder)
                                .background(.white)
                                .cornerRadius(20.0)
                                .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color(red: 82/255.0, green: 53/255.0, blue: 40/255.0), lineWidth: 4))
                            }
                        }
                    }
                }
            }
        }
    }
    
    func checkID(studentID: String) -> Bool {
        for number in viewModel.idNumbers {
            if number == studentID {
                return true
            }
        }
        return false
    }
}

