//
//  M2DRibbonView.m
//  M2DRibbonView
//
//  Created by Akira Matsuda on 3/21/15.
//  Copyright (c) 2015 Akira Matsuda. All rights reserved.
//

#import "M2DRibbonView.h"

@interface M2DRibbonView ()

@property (nonatomic, strong) CAShapeLayer *shape;

@end

@implementation M2DRibbonView

static CGFloat kLabelMergin = 10;

- (instancetype)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
	if (self) {
		self.opaque = NO;
		self.backgroundColor = [UIColor clearColor];
		self.shape = [CAShapeLayer layer];
		[self.shape setFrame:frame];
		[self.layer addSublayer:self.shape];
		_textLabel = [[UILabel alloc] initWithFrame:frame];
		_textLabel.center = self.center;
		[self addSubview:_textLabel];
	}
	
	return self;
}

- (void)setBackgroundColor:(UIColor *)backgroundColor
{
	if (self.shape.strokeColor == nil) {
		self.shape.strokeColor = backgroundColor.CGColor;
	}
	[self.shape setFillColor:backgroundColor.CGColor];
}

- (void)setRiftRightEdge:(BOOL)riftRightEdge
{
	_riftRightEdge = riftRightEdge;
	[self updateLabelPosition];
	[self setNeedsDisplay];
}

- (void)setRiftLeftEdge:(BOOL)riftLeftEdge
{
	_riftLeftEdge = riftLeftEdge;
	[self updateLabelPosition];
	[self setNeedsDisplay];
}

- (void)setRiftLength:(CGFloat)riftLength
{
	_riftLength = riftLength;
	[self updateLabelPosition];
	[self setNeedsDisplay];
}

- (void)setRoundCorner:(BOOL)roundCorner
{
	if (roundCorner) {
		if (self.shape.strokeColor == nil || self.shape.lineWidth == 0) {
			self.shape.strokeColor = self.backgroundColor.CGColor;
			self.shape.lineWidth = 1;
		}
		self.shape.lineCap = kCALineCapRound;
		self.shape.lineJoin = kCALineJoinRound;
	}
	else {
		self.shape.lineCap = kCALineCapButt;
		self.shape.lineJoin = kCALineJoinMiter;
	}
}

- (void)setBorderWidth:(CGFloat)borderWidth
{
	self.shape.lineWidth = borderWidth;
}

- (void)setBorderColor:(UIColor *)borderColor
{
	self.shape.strokeColor = borderColor.CGColor;
}

- (void)drawRect:(CGRect)rect
{
	UIBezierPath *path = [UIBezierPath bezierPath];
	CGPoint p = CGPointZero;
	p.x = self.riftLength;
	p.y = 0;
	[path moveToPoint:p];
	p.x = CGRectGetWidth(self.frame) - self.riftLength;
	[path addLineToPoint:p];
	if (self.riftRightEdge) {
		p.x += self.riftLength;
		[path addLineToPoint:p];
		
		p.x -= self.riftLength;
		p.y += CGRectGetHeight(self.frame) / 2.0;
		[path addLineToPoint:p];
		
		p.x += self.riftLength;
		p.y += CGRectGetHeight(self.frame) / 2.0;
		[path addLineToPoint:p];
	}
	else {
		p.x += self.riftLength;
		[path addLineToPoint:p];
		
		p.y += CGRectGetHeight(self.frame);
		[path addLineToPoint:p];
		
		p.x -= self.riftLength;
		[path addLineToPoint:p];
	}
	
	p.x = self.riftLength;
	p.y = CGRectGetHeight(self.frame);
	[path addLineToPoint:p];
	if (self.riftLeftEdge) {
		p.x = 0;
		[path addLineToPoint:p];
		
		p.x += self.riftLength;
		p.y -= CGRectGetHeight(self.frame) / 2.0;
		[path addLineToPoint:p];
		
		p.x = 0;
		p.y -= CGRectGetHeight(self.frame) / 2.0;
		[path addLineToPoint:p];
	}
	else {
		p.x = 0;
		[path addLineToPoint:p];
		
		p.y -= CGRectGetHeight(self.frame);
		[path addLineToPoint:p];
		
		p.x = self.riftLength;
		[path addLineToPoint:p];
	}
	
	[path closePath];
	self.shape.path = path.CGPath;
}

- (void)sizeToFit
{
	[self.textLabel sizeToFit];
	self.bounds = CGRectMake(0, 0, CGRectGetWidth(self.textLabel.frame) + (self.riftLeftEdge * 2) + (kLabelMergin * 3), CGRectGetHeight(self.frame));
	[self updateLabelPosition];
}

#pragma mark - 

- (void)updateLabelPosition
{
	_textLabel.center = self.center;
	CGFloat x = kLabelMergin;
	CGFloat width = CGRectGetWidth(self.frame) - self.riftLength * 2;
	if (self.riftRightEdge) {
		width -= x;
	}
	if (self.riftLeftEdge) {
		x += x / 2.0;
	}
	
	_textLabel.frame = CGRectMake(x, 0, width, CGRectGetHeight(self.frame));
}

@end
