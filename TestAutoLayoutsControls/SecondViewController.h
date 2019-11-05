//
//  SecondViewController.h
//  TestAutoLayoutsControls
//
//  Created by OPS on 4/11/19.
//  Copyright © 2019 OPS. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *closeButton;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (copy, readwrite) NSString *contactName;
@property (copy, readwrite) UIColor *backgroundColor;

@end

NS_ASSUME_NONNULL_END
