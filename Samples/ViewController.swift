//
//  ViewController.swift
//  Samples
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var content: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let margins = content.layoutMarginsGuide
        let count = 50
        var lastLabel = UILabel.init()
        content.translatesAutoresizingMaskIntoConstraints = false
        
        // Render some content
        for i in 0 ..< count {
            let label = UILabel.init()
            label.translatesAutoresizingMaskIntoConstraints = false
            
            content.addSubview(label)
            
            label.text = "Label \(i)"
            label.font = label.font.withSize(CGFloat(1.5 * Double(i)))
            
            // Set constraints
            if (i == 0) {
                label.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
            } else {
                label.topAnchor.constraint(equalTo: lastLabel.layoutMarginsGuide.bottomAnchor).isActive = true
            }
            label.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
            if (i == count - 1) {
                label.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
            }
            
            lastLabel = label
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

