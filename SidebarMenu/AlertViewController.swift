//
//  AlertViewController.swift
//  SidebarMenu
//
//  Created by Gabe Zimbric on 2/19/16.
//  Copyright © 2016 AppCoda. All rights reserved.
//

import UIKit
import Foundation
import WebKit

class AlertViewController: UIViewController {
    @IBOutlet weak var menuButton:UIBarButtonItem!
    @IBOutlet weak var webview5: UIWebView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if self.revealViewController() != nil {
            menuButton.target = self.revealViewController()
            menuButton.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
        
        let url = NSURL(string: "https://sites.google.com/site/wsdtest123/districtalerts")
        let request = NSURLRequest(URL: url!)
        
        webview5.loadRequest(request)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}