import SwiftUI
struct LoginPage: View {
    @StateObject var loginModel: LoginViewModel = LoginViewModel()
    var body: some View {
        
        VStack{
            
            Circle()
                .trim(from: 0, to: 0.5)
                .fill(.black)
                .frame(width: 45, height: 45)
                .rotationEffect(.init(degrees: -90))
                .offset(x: -23)
                .padding(.bottom,30)
    
            Text("Hey,\nLogin Now")
                .font(.largeTitle.bold())
                .foregroundColor(.black)
            // MARK: Textfields
            TextField("Email", text: $loginModel.email)
                .padding()
                .background {
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            loginModel.email == "" ? Color.black.opacity(0.05) :
                                Color("orange")
                        )
                }
                .textInputAutocapitalization(.never)
                .padding(.top,20)
            
            TextField("password", text: $loginModel.password)
                .padding()
                .background {
                    
                    RoundedRectangle(cornerRadius: 8)
                        .fill(
                            loginModel.password == "" ? Color.black.opacity(0.05) :
                                Color("orange")
                        )
                }
                .textInputAutocapitalization(.never)
                .padding(.top,15)
            
            Button {
                
            } label: {
                Text("Login")
                    .fontWeight(.semibold)
                    .foregroundColor(.blue)
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color("blue"))
                    }
            }
        
            .padding(.vertical,35)
            .disabled(loginModel.email == "" || loginModel.password == "")
            .opacity(loginModel.email == "" || loginModel.password == "" ? 0.5 : 1)
            
            NavigationLink {
                
            } label: {
                Text("")
                    .foregroundColor(.gray)
            }
        }
        .padding(.horizontal,25)
        .padding(.vertical)
    }
    }
struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
