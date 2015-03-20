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
	
	M2DRibbonView *ribbon2 = [[M2DRibbonView alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
	ribbon2.clipsToBounds = NO;
	ribbon2.backgroundColor = [UIColor greenColor];
	ribbon2.borderColor = [UIColor grayColor];
	ribbon2.borderWidth = 1.0;
	ribbon2.riftLength = 10;
	ribbon2.roundCorner = YES;
	ribbon2.riftRightEdge = YES;
	ribbon2.riftLeftEdge = YES;
	ribbon2.textLabel.text = @"text";
	ribbon2.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
	
	M2DRibbonView *ribbon3 = [[M2DRibbonView alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
	ribbon3.clipsToBounds = NO;
	ribbon3.backgroundColor = [UIColor orangeColor];
	ribbon3.borderColor = [UIColor grayColor];
	ribbon3.borderWidth = 1.0;
	ribbon3.riftLength = 10;
	ribbon3.roundCorner = YES;
	ribbon3.riftRightEdge = NO;
	ribbon3.riftLeftEdge = YES;
	ribbon3.textLabel.text = @"text";
	ribbon3.center = CGPointMake(self.view.center.x, self.view.center.y + 100);
	
	M2DRibbonView *ribbon4 = [[M2DRibbonView alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
	ribbon4.clipsToBounds = NO;
	ribbon4.backgroundColor = [UIColor purpleColor];
	ribbon4.borderColor = [UIColor grayColor];
	ribbon4.borderWidth = 1.0;
	ribbon4.riftLength = 10;
	ribbon4.roundCorner = YES;
	ribbon4.riftRightEdge = YES;
	ribbon4.riftLeftEdge = YES;
	ribbon4.textLabel.text = @"long long long long long text";
	ribbon4.center = CGPointMake(self.view.center.x, self.view.center.y + 150);
	[ribbon4 sizeToFit];
	
	[self.view addSubview:ribbon];
	[self.view addSubview:ribbon2];
	[self.view addSubview:ribbon3];
	[self.view addSubview:ribbon4];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
