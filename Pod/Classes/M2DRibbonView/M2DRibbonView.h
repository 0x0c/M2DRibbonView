//
//  M2DRibbonView.h
//  M2DRibbonView
//
//  Created by Akira Matsuda on 3/21/15.
//  Copyright (c) 2015 Akira Matsuda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface M2DRibbonView : UIView

@property (nonatomic, readonly) UILabel *textLabel;
@property (nonatomic, assign) BOOL riftRightEdge;
@property (nonatomic, assign) BOOL riftLeftEdge;
@property (nonatomic, assign) BOOL roundCorner;
@property (nonatomic, assign) CGFloat riftLength;
@property (nonatomic, assign) CGFloat borderWidth;
@property (nonatomic, copy) UIColor *borderColor;

@end
