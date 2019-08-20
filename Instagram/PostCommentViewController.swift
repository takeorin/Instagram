//
//  PostCommentViewController.swift
//  Instagram
//
//  Created by Takemichi on 2019/08/11.
//  Copyright © 2019 takemichi.niro. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class PostCommentViewController: UIViewController {
    
    //PostData読み込みのための変数定義
  //  var postArray: [PostData] = []
    var postArray: PostData!

    @IBOutlet weak var commentTextField: UITextField!
    
    @IBAction func handlePostButton(_ sender: Any){
        
        let name = Auth.auth().currentUser?.displayName
        let combinedText = name! + ": " + commentTextField.text!
        
        
   //     postArray.comment.append(commentTextField.text!)
        
          postArray.comment.append(combinedText)
        
        let postRef = Database.database().reference().child(Const.PostPath).child(postArray.id!)
        let comment = ["comment": postArray.comment]
        postRef.updateChildValues(comment)
        
        let homeViewController = self.storyboard?.instantiateViewController(withIdentifier: "Home") as! HomeViewController
        
        present(homeViewController, animated: true, completion: nil)

        
        // HUDで投稿完了を表示する
        SVProgressHUD.showSuccess(withStatus: "投稿しました")
        
        // 全てのモーダルを閉じる
        UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: nil)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
