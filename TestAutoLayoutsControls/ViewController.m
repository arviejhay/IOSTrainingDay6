//
//  ViewController.m
//  TestAutoLayoutsControls
//
//  Created by OPS on 4/11/19.
//  Copyright © 2019 OPS. All rights reserved.
//
#import "TableViewCell.h"
#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _size = 20;
    
    [self.contactTableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"ContactCell"];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _size;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ContactCell"];
    if (indexPath.row % 2 == 0) {
        cell.backgroundColor = [UIColor blueColor];
        cell.nameLabel.text = @"Even";
    }
    else {
        cell.backgroundColor = [UIColor redColor];
        cell.nameLabel.text = @"Odd";
    }
    cell.nameLabel.textColor = [UIColor whiteColor];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [_contactTableView cellForRowAtIndexPath:indexPath];
    _name = cell.nameLabel.text;
    _cellColor = cell.backgroundColor;
    [self performSegueWithIdentifier:@"SecondSegue" sender:nil];
    [_contactTableView deselectRowAtIndexPath:indexPath animated:true];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"SecondSegue"]) {
        SecondViewController *svc = [segue destinationViewController];
        svc.contactName = _name;
        svc.backgroundColor = _cellColor;
    }
}
@end
