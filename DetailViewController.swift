//
//  DetailViewController.swift
//  homework1_kaelakent
//
//  Created by Robbin Maxwell on 9/3/23.
//

import UIKit

class DetailViewController: UIViewController {
    var myStory: MyStory?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let myStory = myStory {
            print("Hobbies: \(myStory.hobbies)")
            print("Future: \(myStory.future)")
            print("Backstory: \(myStory.backstory)")
        } else {
            print("myStory is nil.")
        }
        if let myStory = myStory {
          
            Backstory.text = "Backstory: \(myStory.backstory)"
        } else {
          
            Backstory.text = ""
        }
    }
    
    @IBOutlet weak var Backstory: UILabel!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
