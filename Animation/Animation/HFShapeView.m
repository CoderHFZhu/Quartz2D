//
//  HFShapeView.m
//  Animation
//
//  Created by zack on 16/4/21.
//  Copyright © 2016年 ZACK. All rights reserved.
//

#import "HFShapeView.h"

@implementation HFShapeView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(50, 50) radius:50 startAngle:0 endAngle:- M_PI_2 clockwise:NO];
    [path addLineToPoint:CGPointMake(50, 50)];
    [path fill];
//    [path stroke];
}


@end
 