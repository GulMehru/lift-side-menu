//
//  WebViewController.swift
//  memuDemo
//
//  Created by Gul Mehru on 1/17/18.
//  Copyright © 2018 Parth Changela. All rights reserved.
//

import UIKit

class WebViewController: UIViewController,UINavigationBarDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var menu: UIBarButtonItem!
    @IBOutlet weak var newWeb2: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let url = NSURL(string : "http://www.google.com")!
        let request = NSURLRequest (url : url as URL)
        
        newWeb2.loadRequest(request as URLRequest)
        
        revealViewController().rearViewRevealWidth = 200
        menu.target = revealViewController()
        menu.action = #selector(SWRevealViewController.revealToggle(_:))
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

