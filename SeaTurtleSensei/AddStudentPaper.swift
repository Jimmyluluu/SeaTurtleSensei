//
//  AddStudentPaper.swift
//  SeaTurtleSensei
//
//  Created by 魯敬元 on 2021/7/24.
//

import SwiftUI
import VisionKit
import UIKit


struct CaptureImageView {
    /// MARK: - Properties
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    func makeCoordinator() -> Coordinator {
      return Coordinator(isShown: $isShown, image: $image)
    }
}

extension CaptureImageView: UIViewControllerRepresentable {
    func makeUIViewController(context: UIViewControllerRepresentableContext<CaptureImageView>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        
        if !UIImagePickerController.isSourceTypeAvailable(.camera) {
            picker.sourceType = .photoLibrary
        }else {
            picker.sourceType = .camera
        }
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<CaptureImageView>) {
        
    }
}

class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
  @Binding var isCoordinatorShown: Bool
  @Binding var imageInCoordinator: Image?
  init(isShown: Binding<Bool>, image: Binding<Image?>) {
    _isCoordinatorShown = isShown
    _imageInCoordinator = image
  }
  func imagePickerController(_ picker: UIImagePickerController,
                didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
     guard let unwrapImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
     imageInCoordinator = Image(uiImage: unwrapImage)
     isCoordinatorShown = false
  }
  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
     isCoordinatorShown = false
  }
}


struct AddStudentPaper: View {
    @State var showCaptureImageView: Bool = false
    @State var image: Image? = nil
    @State var inputImage: UIImage?
    var body: some View {
        ZStack {
            Color(hex:"EAF9FF").edgesIgnoringSafeArea(.all)
            Button(action:{
                self.showCaptureImageView.toggle()
            }){
                Text("ADD")
                    .frame(width: 120, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color(hex: "FB93B2")))
            }.offset(x: 0, y: 200)//.sheet(item: $showCaptureImageView, onDismiss:loadImage){}
            

            if showCaptureImageView {
                CaptureImageView(isShown: $showCaptureImageView, image: $image)
            }
  
            image?
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                
        }
//        func loadImage() {
//            guard let inputImage = inputImage else { return }
//            image = Image(uiImage: inputImage)
//        }
    }
}

struct AddStudentPaper_Previews: PreviewProvider {
    static var previews: some View {
        AddStudentPaper()
    }
}
