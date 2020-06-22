//
//  PageOneViewController.m
//  msgCarrierDemo
//
//  Created by fodlab on 2020/6/22.
//  Copyright © 2020 fodlab. All rights reserved.
//

#import "PageOneViewController.h"
#import "Masonry/Masonry.h"
#import <UIKit/UIKit.h>
#import "PageTwoViewController.h"

@implementation PageOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UILabel *lab = [[UILabel alloc] init];
    lab.textColor = [UIColor redColor];
    
    lab.backgroundColor = [UIColor yellowColor];
    lab.text = @"我是个黄底红字的label";
    lab.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lab];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"立即登录"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIImageView *mainImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    
    mainImageView.contentMode = UIViewContentModeScaleToFill;
    mainImageView.clipsToBounds = YES;
    
    [mainImageView setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://sf1-ttcdn-tos.pstatp.com/obj/web.business.image/201909275d0d065830579845480a9226"]]]];
    [self.view addSubview:mainImageView];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"返回" forState:UIControlStateNormal];
    [btn2 setTitleColor:[UIColor colorWithRed:0.5 green:0.7 blue:0.9 alpha:1] forState:UIControlStateNormal];
    [btn2 setBackgroundColor:[UIColor greenColor]];
    [btn2 addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(80);
        make.width.equalTo(@(250));
        make.centerX.equalTo(self.view);
        make.height.equalTo(@(50));
    }];
    
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(lab.mas_bottom).offset(40);
        make.width.equalTo(@(50));
        make.centerX.equalTo(self.view);
        make.height.equalTo(@(30));
    }];
    
    [mainImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(btn.mas_bottom).offset(50);
        make.width.equalTo(@(200));
        make.centerX.equalTo(self.view);
        make.height.equalTo(@(200));
    }];
    
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.view).offset(-50);
        make.width.equalTo(@(100));
        make.centerX.equalTo(self.view);
        make.height.equalTo(@(40));
    }];
    
}

- (void)login {
    PageTwoViewController *vc = [[PageTwoViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)back {
    [self dismissViewControllerAnimated:YES completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
