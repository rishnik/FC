//
//  AddViewController.h
//  FalseCall
//
//  Created by Nikita Pahadia on 10/16/12.
//  Copyright (c) 2012 Nikita Pahadia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *txtFldName;
@property (retain, nonatomic) IBOutlet UITextField *txtFldNumber;
@property (retain, nonatomic) IBOutlet UIButton *btnPhoto;
- (IBAction)btnPhotoClicked:(id)sender;

- (IBAction)btnSaveClicked:(id)sender;
@end
