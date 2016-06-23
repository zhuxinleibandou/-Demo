//
//  ViewController.m
//  demo
//
//  Created by 朱信磊 on 16/5/26.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import "ViewController.h"
#import "ViewControllertwo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     [self.view setBackgroundColor:[UIColor whiteColor]];

    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushaction)]];
}
-(void)pushaction{
    ViewControllertwo *vc = [[ViewControllertwo alloc]init];
    //使用 presentViewController 跳转
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//支持旋转
-(BOOL)shouldAutorotate{
    return YES;
}

//支持的方向 因为界面A我们只需要支持竖屏
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

////一开始屏幕的方向
//-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//    return UIInterfaceOrientationPortrait;
//}


@end
