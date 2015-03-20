//
//  M2DViewController.m
//  M2DRibbonView
//
//  Created by Akira Matsuda on 03/21/2015.
//  Copyright (c) 2014 Akira Matsuda. All rights reserved.
//

#import "M2DViewController.h"
#import "M2DRibbonView.h"

@interface M2DViewController ()

@end

@implementation M2DViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	M2DRibbonView *ribbon = [[M2DRibbonView alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
	ribbon.clipsToBounds = NO;
	ribbon.backgroundColor = [UIColor blueColor];
	ribbon.borderColor = [UIColor grayColor];
	ribbon.borderWidth = 1.0;
	ribbon.riftLength = 10;
	ribbon.roundCorner = YES;
	ribbon.riftRightEdge = YES;
	ribbon.riftLeftEdge = NO;
	ribbon.textLabel.text = @"text";
	
	ribbon.center = self.view.center;
	[self.view addSubview:ribbon];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
