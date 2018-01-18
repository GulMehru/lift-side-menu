//
//  HotelsViewController.swift
//  memuDemo
//
//  Created by Gul Mehru on 1/18/18.
//  Copyright © 2018 Parth Changela. All rights reserved.
//

import UIKit

class HotelsViewController: UIViewController,UINavigationBarDelegate,UINavigationControllerDelegate {
 
    @IBOutlet weak var hotelView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string : "http://www.m.jetcompare.com.au/flightsw")!
        let request = NSURLRequest (url : url as URL)
        
        hotelView.loadRequest(request as URLRequest)
        
        // Do any additional setup after loading the view.
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
