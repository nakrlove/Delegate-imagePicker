//
//  ViewControllerDelegateTool.swift
//  Delegate-imagePicker
//
//  Created by nakrlove on 2022/11/10.
//

import UIKit

// MARK: - 이미지 피커 컨트롤러 델리게이트 메소드
extension ViewController: UIImagePickerControllerDelegate  {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("1) imagePickerControllerDidCancel #############")
        picker.dismiss(animated: false){ () in
        
            
            let alert = UIAlertController(title: "", message: "이미지 선택이 취소되었습니다", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "확인", style:.cancel))
            self.present(alert , animated: false)
        }
        
    }
    
}

// MARK: - 내비게이션 컨트롤러 델리게이트 메소드
extension ViewController: UINavigationControllerDelegate {
    

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        print("2) imagePickerController #############")
        picker.dismiss(animated: false){ () in
        
            let img = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            self.imageView.image = img
//            self.present(alert , animated: false)
        }
    }
}
