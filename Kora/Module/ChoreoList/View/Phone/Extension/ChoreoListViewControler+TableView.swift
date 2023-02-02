//
//  ChoreoListViewControler+TableView.swift
//  Kora
//
//  Created by Agus Hery on 01/01/23.
//

import Foundation
import UIKit


extension PhoneChoreoListViewController: UITableViewDelegate, UITableViewDataSource {
    
    /// configure total section on table
    func numberOfSections(in tableView: UITableView) -> Int {
        return Set(choreoListData.map{$0.difficulty}).count
    }
    
    /// configure total row per section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    /// configure header data for current section
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let stackView = UIStackView(frame: CGRect(x: 0, y: -30, width: tableView.frame.width, height: 5000))
        stackView.axis = .horizontal
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: -10, right: 20)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        
        
        let titleSection = UILabel()
        titleSection.font = UIFont.systemFont(ofSize: 22, weight: .heavy)
        titleSection.textColor = UIColor(named: K.Color.navTint)
        let moreBtn = UIButton()
        moreBtn.setTitle("See More", for: .normal)
        moreBtn.setTitleColor(UIColor(named: K.Color.navTint), for: .normal)
        moreBtn.addTarget(self, action: #selector(goToRoute(_:)), for: .touchUpInside)
        
        switch section {
            case 0:
                titleSection.text = K.Difficulty.beginner
                moreBtn.tag = 2
            case 1:
                titleSection.text = K.Difficulty.intermediate
                moreBtn.tag = 3
            case 2:
                titleSection.text = K.Difficulty.advance
                moreBtn.tag = 4
            default:
                break
        }
        
        stackView.addArrangedSubview(titleSection)
        stackView.addArrangedSubview(moreBtn)
        return stackView
    }
    
    /// configure data for current row at one section
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.presenter = self.presenter
        switch indexPath.section {
            case 0:
                cell.updateData(with: choreoListData
                    .filter({
                        $0.difficulty == Difficulty.beginner
                    }))
                return cell
            case 1:
                cell.updateData(with: choreoListData
                    .filter({
                        $0.difficulty == Difficulty.intermediate
                    }))
                return cell
            case 2:
                cell.updateData(with: choreoListData
                    .filter({
                        $0.difficulty == Difficulty.advance
                    }))
                return cell
            default:
                return UITableViewCell()
        }
    }
}
