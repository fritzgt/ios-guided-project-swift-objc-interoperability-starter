//
//  LSIPersonSearchTableViewController.m
//  Hybrid Star Wars Search
//
//  Created by Spencer Curtis on 1/28/19.
//  Copyright © 2019 Spencer Curtis. All rights reserved.
//

#import "LSIPersonSearchTableViewController.h"
#import "Star_Wars_Hybrid-Swift.h"
#import "LSIPerson.h"

@interface LSIPersonSearchTableViewController () <UISearchBarDelegate>

// TODO: Create a PersonController.swift and make it an instance variable
@property (nonatomic) NSArray<LSIPerson *> *people;

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;

@end

@implementation LSIPersonSearchTableViewController

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return self.people.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    FGTPersonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PersonCell" forIndexPath:indexPath];
    
    LSIPerson *people = [self.people objectAtIndex: indexPath.row];
    cell.person = people;
	
    return cell;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    [FGTPersonController.sharedController searchForPeopleWithSeachName: searchBar.text completion:^(NSArray<LSIPerson *> *people, NSError *error) {
        if(error){
            NSLog(@"Error searching for:%@, %@",searchBar.text, error);
        }
        
        self.people = people;
        [self.tableView reloadData];
    }];
}

@end
