//
//  SecondViewController.m
//  TestAutoLayoutsControls
//
//  Created by OPS on 4/11/19.
//  Copyright © 2019 OPS. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (IBAction)didTapClose:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    _nameLabel.text = _contactName;
    _nameLabel.textColor = [UIColor whiteColor];
    
    [_closeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.view.backgroundColor = _backgroundColor;
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
