//
//  AttractionTableViewController.swift
//  NavigationTest
//
//  Created by NoDack on 04/08/2018.
//  Copyright © 2018 zuzero. All rights reserved.
//

import UIKit

class AttractionTableViewController: UITableViewController {
    
    
    // MARK: Properties
    
    // 테이블 Label 에 출력할 문자열
    var attractionNames = [String]()
    // 테이블 imageView에 출력한 이미지
    var attractionImages = [String]()
    // 하위 컨트롤러에 넘길 URL
    var attractionWebs = [String]()
    
    // 화면에 보여질 View 들을 메모리에 저장하고 호출되는 메소드
    // 이 메소드에 작업할 때는 UI 작업을 해야합니다.
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 셀에 출력할 텍스트 배열 생성
        self.attractionNames = ["궁전", "에펠탑", "그랜드캐넌", "윈저궁", "엠파이어스테이트"]
        
        // 셀에 출력할 이미지 배열 생성
        self.attractionImages = ["buckingham_palace.jpg", "eiffel_tower.jpg", "grand_canyon.jpg", "windsor_castle.jpg", "empire_state_building.jpg"]
        
//        for _ in 0..<self.attractionImages.count {
//            // 웹 주소 배열
//
//        }
        
        let rootWebURL = "http://en.wikipedia.org/wiki/"
        self.attractionWebs = [
            rootWebURL+"buckingham_palace",
            rootWebURL+"eiffel_tower",
            rootWebURL+"grand_canyon",
            rootWebURL+"windsor_castle",
            rootWebURL+"empire_state_building"
        ]
        
        
        
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.attractionNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AttractionTableViewCell", for: indexPath) as! AttractionTableViewCell
        
        cell.label.text = self.attractionNames[indexPath.row]
        cell.imgView.image = UIImage(named: attractionImages[indexPath.row])
        cell.accessoryType = .disclosureIndicator
        

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 하위뷰 컨트롤러 생성
        let detailViewController: AttractionViewController? = self.storyboard?.instantiateViewController(withIdentifier: "AttractionViewController") as! AttractionViewController
        
        detailViewController?.webSite = self.attractionWebs[indexPath.row]
        
        self.modalTransitionStyle = .flipHorizontal
        self.navigationController?.pushViewController(detailViewController!, animated: true)
    }
    
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
