//
//  ManageProfileView.swift
//  Tunagu
//
//  Created by Kosei Ban on 2022-04-11.
//

import SwiftUI
import Firebase

struct ManageProfileView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    let auth = Auth.auth()
    let storage = Storage.storage()

    
    @State var name = ""
    @State var Email = ""
    @State var Password = ""
    
    @State var text: String = ""
    
    @State var shouldShowImagePicker = false
    @State var image: UIImage?
    
    
    private var frameWidth: CGFloat {
        UIScreen.main.bounds.width
    }
    
    var body: some View {
        
        NavigationView{
            
            // Profile schreen
            
            VStack{
                
                Button{
                    
                    shouldShowImagePicker.toggle()
                    
                } label: {
                    
                    
                    VStack{
                        
                        
                        if let image = self.image {
                            
                            Image(uiImage: image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 200, alignment: .center)
                                .cornerRadius(80)
                            
                            
                        } else {
                            
                            Image(systemName: "person.circle")
                                .font(.system(size: 100))
                                .padding()
                                .foregroundColor(Color(.label))
                            
                        }
                        
                        Text("Upload a new image")
                    }
                    .padding(.top,70)
                                    
                }
                
                // Refarence View
                
                ZStack{
    
                    Color.white
                    
                    VStack{
                        // Change User Name
                        Text("User name")
                            .foregroundColor(.gray)
                            .font(.system(size: 25, weight: .bold))
                            .frame(width: 300, alignment: .leading)
                            .padding()
                        
                        
                        TextFieldView(
                            placeholder: Text("Kosei Ban").foregroundColor(.blue),
                            text: self.$name
                        )
                            //.foregroundColor(.black)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(.leading,80)
                            
                        Divider()
                            .padding(.leading,50)
                            .padding(.trailing,50)
                        
                        // Change Email
                        
                        Text("E-mail")
                            .foregroundColor(.gray)
                            .font(.system(size: 25, weight: .bold))
                            .frame(width: 300, alignment: .leading)
                            .padding()
                        
                        
                        TextFieldView(
                            placeholder: Text("Kosei3312435@icloud.com").foregroundColor(.blue),
                            text: self.$Email
                        )
                            
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(.leading,80)
                            
                        Divider()
                            .padding(.leading,50)
                            .padding(.trailing,50)
                        
                        Text("Password")
                            .foregroundColor(.gray)
                            .font(.system(size: 25, weight: .bold))
                            .frame(width: 300, alignment: .leading)
                            .padding()
                        
                        // Change Password
                        
                        TextFieldView(
                            placeholder: Text("123456").foregroundColor(.blue),
                            text: self.$Password
                        )
                           
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(.leading,80)
                            
                        Divider()
                            .padding(.leading,50)
                            .padding(.trailing,50)
                            .padding(.bottom,20)
                
                    }
                    

                }
                .cornerRadius(20)
                .shadow(radius: 20)
                .padding(.all,30)
                .padding(.bottom)
                
                Color.white
                    .frame( height: 150)
                
            }
            // Save Button (Top)
        .toolbar{
                ToolbarItemGroup(placement:  .navigationBarTrailing){
                    Button {
                        
                        // Upload Icon Photo 
                        persistImageToStorage()
                    } label: {
                        Text("Save")
                            .foregroundColor(.red)
                    }
                    .padding(.trailing,20)
                }
            }
        //.navigationBarTitle("", displayMode: .inline)
        //.navigationBarHidden(true)
            
        }
        .fullScreenCover(isPresented: $shouldShowImagePicker, onDismiss: nil ){
            ImagePicker(image: $image)
                            .ignoresSafeArea()
        }
        
    }
    
    
    // -------- Check This Func (Upload photo to Fire base) --------------
    func persistImageToStorage(){
        
        guard let uid = auth.currentUser?.uid else { return }
        let ref = storage.reference(withPath: uid)
        guard let imageData = self.image?.jpegData(compressionQuality: 0.5) else { return }
        
        ref.putData(imageData, metadata: nil) { metadata, err in
            if err != nil {
                        return
                    }
            ref.downloadURL { url, err in
                if err != nil {
                               return
                           }
    }

   }
 }
}
    

struct ManageProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ManageProfileView()
    }
}

