//
//  ViewControllertwo.m
//  demo
//
//  Created by 朱信磊 on 16/5/26.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import "ViewControllertwo.h"

@interface ViewControllertwo ()

@end

@implementation ViewControllertwo

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor redColor]];
//    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pushaction)]];
    
    UIView *view_top = [[UIView alloc]initWithFrame:CGRectMake(0, 0,self.view.bounds.size.height+20, 64)];
    [view_top setBackgroundColor:[UIColor greenColor]];
    [self.view addSubview:view_top];
    {
        UIButton *bt = [[UIButton alloc]initWithFrame:CGRectMake(80, 80, 80, 80)];
        [bt setBackgroundColor:[UIColor yellowColor]];
        [bt setTitle:@"点我返回" forState:UIControlStateNormal];
        [bt addTarget:self action:@selector(pushaction) forControlEvents:UIControlEventTouchUpInside];;
        [self.view addSubview:bt];
    }
}
-(void)pushaction{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//支持旋转
-(BOOL)shouldAutorotate{
    return YES;
}
//
//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeLeft;
}

//一开始的方向  很重要
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeLeft;
}

@end
