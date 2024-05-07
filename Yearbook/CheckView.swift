import Foundation
import SwiftUI


struct CheckView: View {
    
    @ObservedObject var viewModel = CheckViewModel()
    @State var array = [626130,625106]
    @State var StudentID = ""
    @State var purchased:Bool = true
    @State var text = ""
    @State var showingAlert = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Color.gray
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        HStack {
                            Text("<Back")
                                .foregroundStyle(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0))
                                .bold()
                                .onTapGesture {
                                    presentationMode.wrappedValue.dismiss()
                                }
                            Spacer()
                        }
                        HStack {
                            Spacer()
                            Text("Check for Yearbook Purchase")
                                .foregroundStyle(Color.white)
                                .bold()
                            Spacer()
                        }
                    }
                    .padding()
                    Spacer()
                    
                }
                HStack {
                    VStack(alignment: .leading) {
                        Group {
                            VStack(alignment: .leading) {
                                Text("Check for Yearbook")
                                Text("Purchase")
                            }
                            .font(.system(size: 60))
                            .font(.title)
                            .foregroundStyle(.white)
                            .shadow(radius: 20)
                            .offset(y:-50)
                            .fontWeight(.bold)
                            .padding(.top)
                            .padding(.bottom)
                        }
                        .fontWeight(.bold)
                        .font(.custom("Arial", fixedSize: 35))
                        .foregroundStyle(.white)
                        
                        TextField("Enter Student ID", text: $StudentID)
                            .padding()
                            .background(.black.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                        //                        .textFieldStyle(.roundedBorder)
                        //                        .preferredColorScheme(.light)
                        //                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 82/255.0, green: 53/255.0, blue: 40/255.0), lineWidth: 4))
                        //                        .padding()
                            .onSubmit {
                                let answer = checkID(studentID: StudentID)
                                if answer == false {
                                    text = "The ID: \(StudentID) has purchased a yearbook, thank you!"
                                } else if answer == true {
                                    text = "The ID: \(StudentID) has not purchased a yearbook."
                                }
                                showingAlert =  true
                                StudentID = ""
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
                        
                        
                        VStack {
                            HStack {
                                Button {
                                    let answer = checkID(studentID: StudentID)
                                    if answer == true {
                                        text = "The ID: \(StudentID) has purchased a yearbook, thank you!"
                                    } else if answer == false {
                                        text = "The ID: \(StudentID) has not purchased a yearbook."
                                    }
                                    showingAlert =  true
                                    StudentID = ""
                                    
                                } label: {
                                    HStack {
                                        Text("Check ID")
                                            .foregroundColor(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0))
                                            .padding()
                                            .padding(.leading)
                                            .padding(.trailing)
                                            .padding(.leading)
                                            .padding(.trailing)
                                    }
                                    .font(.system(size: geometry.size.height * 0.032))
                                    .fontWeight(.bold)
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
                            //                            HStack {
                            //                                NavigationLink(destination: BuyView()) {
                            //                                    HStack {
                            //                                        Text("Buy yearbook")
                            //                                            .foregroundColor(Color(red: 252/255.0, green: 103/255.0, blue: 26/255.0))
                            //                                    }
                            //                                    .font(.system(size: geometry.size.height * 0.032))
                            //                                    .fontWeight(.bold)
                            //                                    .padding()
                            //                                    .frame(width: geometry.size.width * 0.75, height: geometry.size.height * 0.07)
                            //                                    .foregroundColor(.white)
                            //                                    .textFieldStyle(.roundedBorder)
                            //                                    .background(.white)
                            //                                    .cornerRadius(20.0)
                            //                                    .overlay(RoundedRectangle(cornerRadius: 20.0).stroke(Color(red: 82/255.0, green: 53/255.0, blue: 40/255.0), lineWidth: 4))
                            //                                }
                            //                            }
                            //                        }
                        }
                    }
                    .padding()
                    Image("hersey")
                        .resizable()
                        .offset(y:-25)
                        .frame(width: 300, height: 300)
                        .padding()
                }
            }
            .navigationBarBackButtonHidden()
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

