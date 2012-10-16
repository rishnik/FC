//
//  AddViewController.m
//  FalseCall
//
//  Created by Nikita Pahadia on 10/16/12.
//  Copyright (c) 2012 Nikita Pahadia. All rights reserved.
//

#import "AddViewController.h"

@interface AddViewController ()

@end

@implementation AddViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_txtFldName release];
    [_txtFldNumber release];
    [_btnPhoto release];
    [super dealloc];
}
- (IBAction)btnPhotoClicked:(id)sender {
}

- (IBAction)btnSaveClicked:(id)sender {
}
@end
