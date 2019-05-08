//
//  FavoriteViewController.swift
//  Motivate Me CP
//
//  Created by Joy_Wang on 5/7/19.
//  Copyright © 2019 Kazutaka Homma. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var FavoriteTableView: UITableView!
    //create two arrays for cells
    var quoteArrays: [String] = ["The Way Get Started Is To Quit Talking ANd Begin Doing.", "The Pessimist Sees Difficulty In Every Opportunity. The Optimist Sees Opportunity In Every Difficulty.", "Don't Let Yesterday Take Up Too Much Of Today.","You Learn More From Failure Than From Success. Don't Let It Stop You. Failure Builds Character.", "It's Not Whether You Get Knocked Down, It's Whether You Get Up." , "If You Are Working On Something That You Really Care About, You Don't Have To Be Pushed. The Vision Pulls You.", "People Who Are Crazy Enough To Think They Can Change The The World, Are The One Who Do. "]
    
    var authorArrays: [String] = ["- Walt Disney", "- Winston Churchill", "- Will Rogers", "- Unknown", "- Vince Lombardi", "- Steve Jobs", "- Rob Siltanen" ]
    var count:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        FavoriteTableView.dataSource = self
        FavoriteTableView.delegate = self
        self.FavoriteTableView.reloadData()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quoteArrays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let  likequote = quoteArrays[indexPath.row]
        cell.textLabel!.text = "row:\(indexPath.row)"
        /*let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteQuoteListCell") as! FavoriteCell

        if count < (quoteArrays.count - 1) {
            count += 1
        }
        cell.FavoriteQuoteLabel.text = quoteArrays[count]
        cell.FavoriteAuthorLabel.text = authorArrays[count]*/
        
        return cell
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
