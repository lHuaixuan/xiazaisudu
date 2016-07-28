//
//  ViewController.m
//  下载速度
//
//  Created by admin on 16/7/27.
//  Copyright © 2016年 刘怀轩. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelView;
@property (weak, nonatomic) IBOutlet ProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)progressChange:(UISlider *)sender {
    // 获取滑块的值
    // %% = %
    self.labelView.text = [NSString stringWithFormat:@"%.2f%%" , sender.value * 100];
    // 给 progressView 赋值
    _progressView.progress = sender.value;
}

@end
