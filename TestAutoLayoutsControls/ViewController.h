//
//  ViewController.h
//  TestAutoLayoutsControls
//
//  Created by OPS on 4/11/19.
//  Copyright © 2019 OPS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *contactTableView;
@property (copy, readwrite) NSArray *tableData;
@property (copy, readwrite) NSString *name;
@property (copy, readwrite) UIColor *cellColor;
@property (readwrite) NSInteger size;

@end

