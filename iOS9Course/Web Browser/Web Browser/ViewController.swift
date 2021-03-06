//
//  ViewController.swift
//  Web Browser
//
//  Created by Cesar Zepeda on 7/31/15.
//  Copyright © 2015 Cesar Zepeda. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    var address: String = String()
    
    
    
    
    @IBOutlet weak var webAddress: UITextField!
    @IBOutlet weak var webView: UIWebView!
    
    @IBAction func goPressed(sender: AnyObject) {
        webAddress.resignFirstResponder()
        loadWebPage()
    }
    
    
    @IBAction func leftPressed(sender: AnyObject) {
    }
    
    
    
    @IBAction func rightPressed(sender: AnyObject) {
    }
    
    
    
    
    @IBAction func zoomInPressed(sender: AnyObject) {
    }
    
    
    
    
    @IBAction func zoomOutPressed(sender: AnyObject) {
    }
    
    
    
    func loadWebPage() {
        
        if webAddress.text != "" {
            
            address = address.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
            address = self.webAddress.text!
            
            if address.hasPrefix("www. ") {
                address = "https://" + address
            } else if !address.hasPrefix("Http://") {
                address = "https://" + address
            }
            
            let url = NSURL(string: address)
            let request = NSURLRequest(URL: url!)
            webView.loadRequest(request)
        }
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webAddress.delegate = self
        webView.scalesPageToFit = true
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        webAddress.resignFirstResponder()
        loadWebPage()
        return true
        
        
        
        
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

