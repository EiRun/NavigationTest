//
//  AttractionViewController.swift
//  NavigationTest
//
//  Created by NoDack on 04/08/2018.
//  Copyright © 2018 zuzero. All rights reserved.
//

import UIKit
import WebKit

class AttractionViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet weak var webView: WKWebView!
    
    // MARK: Properties
    // 상위 뷰 컨트롤러 부터 넘겨받은 데이터를 저장할 변수
    var webSite: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
        // webSite != nil
        if let address = self.webSite {
            let webURL: URL? = URL(string: address)
            let request = URLRequest(url: webURL!)
            self.webView.load(request)
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
        
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
