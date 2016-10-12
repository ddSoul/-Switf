//
//  LCTabBarButton.m
//  idailycar
//
//  Created by 邓西亮 on 15/6/30.
//  Copyright (c) 2015年 Castiel Chen. All rights reserved.
//


#import "XLTabBarButton.h"
#import "UIView+NJ.h"

@implementation XLTabBarButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.imageView.contentMode = UIViewContentModeCenter;
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    }
    return self;
}


- (CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageX = 0;
    CGFloat imageY = 5;
    CGFloat imageW = self.width;
    CGFloat imageH = self.height * 0.6;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
    CGFloat imageX = 22;
    CGFloat imageY = 8;
    CGFloat imageW = 20;
    CGFloat imageH = 20;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    CGFloat titleY = self.height * 0.65;
    CGFloat titleW = self.width;
    CGFloat titleH = self.height - titleY;
    return CGRectMake(titleX, titleY, titleW, titleH);
}


- (void)setHighlighted:(BOOL)highlighted
{
    
}

@end
