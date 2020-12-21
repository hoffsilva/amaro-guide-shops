//
//  GuideShopsListViewController.swift
//  GuideShops
//
//  Created by Hoff Henry Pereira da Silva on 20/12/20.
//

import UIKit
import Resolver
import Combine

class GuideShopsListViewController: UIViewController {
    
    @Injected private var guideShopsListView: GuideShopsListView
    @Injected private var guideShopsListViewModel: GuideShopsListViewModel
    
    private var cancellables = Set<AnyCancellable>()
    
    override func loadView() {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = guideShopsListView
        setUpViews()
        setUpBindings()
        guideShopsListViewModel.getGuideShops()
    }
    
    private func setUpViews() {
        guideShopsListView.guideShopsTableView.dataSource = self
        guideShopsListView.guideShopsTableView
            .register(
                GuideShopsListViewCell.self,
                forCellReuseIdentifier: String(describing: GuideShopsListViewCell.self)
            )
    }
    
    private func setUpBindings() {
        
        guideShopsListViewModel
            .$shopsDidLoadWithSuccess
            .sink { [weak self] _ in
                self?.guideShopsListView.guideShopsTableView.reloadData()
            }.store(in: &cancellables)
        
        guideShopsListViewModel
            .$shopsDidLoadWithError
            .sink { errorMessage in
                print(errorMessage)
            }.store(in: &cancellables)
    }
    
}

extension GuideShopsListViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView
                .dequeueReusableCell(
                    withIdentifier: String(describing: GuideShopsListViewCell.self),
                    for: indexPath) as? GuideShopsListViewCell else { return UITableViewCell() }
        cell.setUpCell(data: guideShopsListViewModel.listOfShops[indexPath.row])
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guideShopsListViewModel.listOfShops.count
    }
    
}
