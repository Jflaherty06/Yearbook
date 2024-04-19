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
                    }
                    .padding()
                    .fontWeight(.bold)
                    .font(.custom(
                        "Arial", fixedSize: 35))
                    .foregroundStyle(.white)
                    .frame(width: geometry.size.width * 0.95, height: geometry.size.height * 0.2, alignment: .center)
                    
                    
                    TextField("Enter Student ID", text: $StudentID)
                        .textFieldStyle(.roundedBorder)
                        .frame(width: geometry.size.width * 0.875, height: geometry.size.height * 0.1)
                        .padding()
                        .onSubmit {
                            let answer = checkID(studentID: StudentID)
                            if answer == true {
                                text = "You have purchased a yearbook, thank you!"
                            } else if answer == false {
                                text = "You have not purchased a yearbook"
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
                                if answer == true {
                                    text = "You have purchased a yearbook, thank you!"
                                } else if answer == false {
                                    text = "You have not purchased a yearbook"
                                }
                                showingAlert =  true
                                StudentID = ""
                                
                            } label: {
                                Text("Check ID")
                                    .padding()
                                    .frame(width: geometry.size.width * 0.5, height:geometry.size.height * 0.09)
                                    .font(.system(size: geometry.size.height * 0.032))
                                    .background(Color.orange)
                                    .foregroundColor(.black)
                                    .cornerRadius(10)
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
                                }
                                .padding()
                                .frame(width: geometry.size.width * 0.5, height:geometry.size.height * 0.09)
                                .font(.system(size: geometry.size.height * 0.032))
                                .background(Color.orange)
                                .foregroundColor(.black)
                                .cornerRadius(10)
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

