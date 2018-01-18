//
//  ViewController.swift
//  memuDemo
//
//  Created by Parth Changela on 09/10/16.
//  Copyright © 2016 Parth Changela. All rights reserved.
//

import UIKit

class ViewController: UIViewController,  UIWebViewDelegate {

    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var btnMenuButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = NSURL(string : "http://www.m.jetcompare.com.au")!
        let request = NSURLRequest (url : url as URL)
        self.webView.delegate = self
        webView.loadRequest(request as URLRequest)
        if revealViewController() != nil {
            //            revealViewController().rearViewRevealWidth = 62
            btnMenuButton.target = revealViewController()
            btnMenuButton.action = "revealToggle:"
            
//            revealViewController().rightViewRevealWidth = 150
//            extraButton.target = revealViewController()
//            extraButton.action = "rightRevealToggle:"
            
      
            
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    private func webViewDidStartLoad(_:UIView){
        activity.startAnimating()
    }
    func webViewDidFinishLoad(_:UIWebView){
        activity.stopAnimating()
    }

}
extension UIView {
    func addConstrainWithFormat(format: String, views: UIView...)  {
        var viewsDictionary = [String: UIView]()
        for(index, view) in views.enumerated(){
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
}
    extension UIButton {
        class func cicularButton() -> UIButton {
            let button = UIButton(type: .system)
            button.setTitleColor(.black, for: .normal)
            button.backgroundColor = UIColor.black
            button.layer.cornerRadius = 30
            return button
        }
    
}


