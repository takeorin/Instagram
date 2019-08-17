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
    var postArray: [PostData] = []

    @IBOutlet weak var commentTextField: UITextField!
    
    @IBAction func handlePostButton(_ sender: Any){
        
        print(postArray)
        
        postArray.comment.append(commentTextField)
        
        
        
       
        
        
        
        
   /*     // postDataに必要な情報を取得しておく
        let time = Date.timeIntervalSinceReferenceDate
        let name = Auth.auth().currentUser?.displayName
        
        // 辞書を作成してFirebaseに保存する
        let postRef = Database.database().reference().child(Const.PostPath)
        let postDic = ["comment": commentTextField.text!,  "time": String(time), "name": name!]
        postRef.childByAutoId().setValue(postDic)
        
        // HUDで投稿完了を表示する
        SVProgressHUD.showSuccess(withStatus: "投稿しました")
        
        // 全てのモーダルを閉じる
        UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: true, completion: nil)

        */
        
        
        
        
        
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
