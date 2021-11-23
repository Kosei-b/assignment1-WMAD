//
//  ChratViewController.swift
//  TravelApp
//
//  Created by Kosei Ban on 2021-11-23.
//

import UIKit
import Charts


class ChratViewController : UIViewController {
    
    
    lazy var chart : PieChartView = {
        let chart = PieChartView()
        chart.translatesAutoresizingMaskIntoConstraints = false
        
        return chart
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = UIColor.white
        view.addSubview(chart)
        NSLayoutConstraint.activate([
            chart.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            chart.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            chart.widthAnchor.constraint(equalToConstant: 300),
            chart.heightAnchor.constraint(equalToConstant: 300),
        ])
        
        
        
        
        let japan = PieChartDataEntry(value: 70.3, label: "japan")
        let canada = PieChartDataEntry(value: 65.3, label: "canada")
        let set = PieChartDataSet(entries: [japan,canada], label: "Popuplation")

        set.colors = ChartColorTemplates.liberty()
                        + ChartColorTemplates.colorful()
                        + ChartColorTemplates.vordiplom()
                        + ChartColorTemplates.joyful()
                        + ChartColorTemplates.pastel()
                        + [UIColor(red: 51/255, green: 181/255, blue: 299/255, alpha: 1)]
                     
//        let pieChartData = PieChartData(dataSets: set)
//        chart.data = pieChartData
//
//

       
    
    }
}
