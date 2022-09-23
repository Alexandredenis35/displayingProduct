//
//  ThirdViewController.swift
//  DIsplayingProject
//
//  Created by Alexandre DENIS on 22/09/2022.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        return table
    }()
    
    private let viewModel: ThirdVCViewModel = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
    }
}

extension ThirdViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return viewModel.models[section].title
    }
    
}

extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model = viewModel.models[indexPath.section].options[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier, for: indexPath) as? SettingTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: model)
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return viewModel.models.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // create animation highlight cell
        tableView.deselectRow(at: indexPath, animated: true)
        let model = viewModel.models[indexPath.section].options[indexPath.row]
        model.handler()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.models[section].options.count
    }
    
    
}
