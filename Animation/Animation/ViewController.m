//
//  ViewController.m
//  Animation
//
//  Created by zack on 16/4/21.
//  Copyright © 2016年 ZACK. All rights reserved.
//

#import "ViewController.h"
#import "HFProgress.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lab;
@property (weak, nonatomic) IBOutlet HFProgress *progressView;

@end

@implementation ViewController
- (IBAction)progressChange:(UISlider *)sender {
    self.lab.text = [NSString stringWithFormat:@"%.2f%%",sender.value * 100];
    self.progressView.progress = sender.value;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
