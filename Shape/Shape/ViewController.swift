//
//  ViewController.swift
//  Shape
//
//  Created by miyazawaryohei on 2020/10/10.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //四角形のイメージを作る
        let boxImage = makeBoxImage(witdh: 240, height: 180)
        //イメージに設定する
        let boxView = UIImageView(image: boxImage)
        //画面に表示する
        boxView.center = view.center
        view.addSubview(boxView)
    }
    
    //四角形の図形のイメージを作る
    func makeBoxImage(witdh w:CGFloat, height h:CGFloat) -> UIImage {
        //イメージ処理の開始
        let size = CGSize(width: w, height: h)
        UIGraphicsBeginImageContextWithOptions(size, false, 1.0)
        //コンテキスト
        let context = UIGraphicsGetCurrentContext()
        
        //四角形の描画
        //サイズ
        let drawRect = CGRect(x: 0, y: 0, width: w, height: h)
        //パスを作る（四角形）
        let drawPath = UIBezierPath(rect: drawRect)
        
        //塗り色
        context?.setFillColor(red: 0.0 ,green: 1.0, blue: 1.0, alpha: 1.0)
        //パスを塗る
        drawPath.fill()
        //線の色
        context?.setStrokeColor(red: 0.0 ,green: 1.0, blue: 1.0, alpha: 1.0)
        //パスを描く
        drawPath.stroke()
        //イメージコンテストからUIImageを作る
        let image = UIGraphicsGetImageFromCurrentImageContext()
        //イメージ処理の終了
        UIGraphicsEndImageContext()
        
        return image!
        
    }
    
}
