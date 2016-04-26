//
//  HFPieView.m
//  Animation
//
//  Created by zack on 16/4/21.
//  Copyright © 2016年 ZACK. All rights reserved.
//

#import "HFPieView.h"

@implementation HFPieView
-(NSArray *)dataArr {
    int totoal = 100;
    
    NSMutableArray *arrM = [NSMutableArray array];
    
    int temp = 0; // 30 40 30
    for (int i = 0; i < arc4random_uniform(10) + 1; i++) {
        temp = arc4random_uniform(totoal) + 1;
        // 100 1~100
        
        // 随机出来的临时值等于总值，直接退出循环，因为已经把总数分配完毕，没必要在分配。
        
        [arrM addObject:@(temp)];
        
        // 解决方式：当随机出来的数等于总数直接退出循环。
        if (temp == totoal) {
            totoal -= temp;
            
            break;
        }
        totoal -= temp;
        
    }
    
    if (totoal) {
        [arrM addObject:@(totoal)];
    }
    
    return arrM;
    
    
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self setNeedsDisplay];
}
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    NSArray *arr = [self dataArr];
    CGFloat radius = self.bounds.size.width / 2;
    CGPoint center = CGPointMake(self.bounds.size.width / 2, self.bounds.size.width / 2);
    
    CGFloat startA = 0;
    CGFloat angle = 0;
    CGFloat endA = 0;
    
    
    
    for (int i = 0; i < arr.count; i++) {
        startA = endA;
        angle = [arr[i] doubleValue]/100.0 * M_PI * 2;
        endA = startA + angle;
        UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:radius startAngle:startA endAngle:endA clockwise:YES];
        [path addLineToPoint:center];
        [[self colorRandom] set];

        [path fill];
    }
    
    
   
}
- (UIColor *)colorRandom {
    CGFloat red = arc4random_uniform(256)/255.0;
    CGFloat green = arc4random_uniform(256)/255.0;
    CGFloat blue = arc4random_uniform(256)/255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1];
}

@end
