//
//  ViewController.swift
//  sampleTableView001
//
//  Created by RIho OKubo on 2016/05/06.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        myTableView.delegate = self
//        myTableView.delegate = self
//        これはTablr Viewの左クリックdelegateの丸からドラッグしてView Controllerのマークに持っていくのと同じ作業
        
    }
    
    
    //delegateとdatasourceどちらもself,VCのマークにつけてあげないとダメ　リストを表示するという仕事自体は、datasourceだけでもできる。でもリストの中にデータを収めるには、delegateがいる。
    
    

    //表示する行数の決定　->は返り値のデータ型
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->Int{
        return 10 //10行数
        
    }
    
    
    //行に表示する内容をセット
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
        cell.textLabel!.text = "\(indexPath.row)行目"
        return cell
        }
    
    
    //選択されたときに行う処理
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath!){
        print("\(indexPath.row)行目を選択")
    }
    
    
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

