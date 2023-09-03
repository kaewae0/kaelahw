//
//  ViewController.swift
//  homework1_kaelakent
//
//  Created by Robbin Maxwell on 9/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    let myStory = MyStory(
        
        hobbies: "My favorite things to do in my free time are watching horror gameplays on YouTube or Twitch, painting, and lots of online shopping. I also enjoy going to Fort Lauderdale/Miami.",
        future: "In the future, I hope to have a career as either a Sales Engineer or a Cybersecurity analyst. I also hope to be living in the Boca Raton-Fort Lauderdale area.",
        backstory: "My name is Kaela and I am 23 years old. I was born and raised in Baltimore, Maryland for 16 years then I moved to Palm Beach, Florida in August 2016. I have 2 sisters, a brother, and about 1000 pets."
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func Backstory(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            if segue.identifier == "detailSegue",
               let tappedView = sender as? UIView,
               let detailViewController = segue.destination as? DetailViewController {
                
                switch tappedView.tag {
                case 0:
                    // Create an instance of MyStory and assign it to detailViewController.story
                    let myStoryInstance = MyStory(
                        hobbies: "My favorite things to do in my free time are watching horror gameplays on YouTube or Twitch, painting, and lots of online shopping. I also enjoy going to Fort Lauderdale/Miami.",
                        future: "In the future, I hope to have a career as either a Sales Engineer or a Cybersecurity analyst. I also hope to be living in the Boca Raton-Fort Lauderdale area.",
                        backstory: "My name is Kaela and I am 23 years old. I was born and raised in Baltimore, Maryland for 16 years then I moved to Palm Beach, Florida in August 2016. I have 2 sisters, a brother, and about 1000 pets."
                    )
                    detailViewController.myStory = myStoryInstance
                default:
                    print("No valid tag was tapped, please check your selection.")
                }
                
                
                
                
            }
            
        }}
