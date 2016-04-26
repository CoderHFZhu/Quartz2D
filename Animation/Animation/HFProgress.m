//
//  HFProgress.m
//  Animation
//
//  Created by zack on 16/4/21.
//  Copyright © 2016年 ZACK. All rights reserved.
//

#import "HFProgress.h"

@implementation HFProgress

-(void)setProgress:(CGFloat)progress {
    _progress = progress;
    [self setNeedsDisplay];
    
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat radius = self.bounds.size.width / 2;
    CGPoint center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.width / 2);
    CGFloat endAngle = -M_PI_2 + _progress * M_PI * 2;
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:-M_PI_2 endAngle:endAngle clockwise:YES];
        [path addLineToPoint:center];
    [path fill];
}


@end
