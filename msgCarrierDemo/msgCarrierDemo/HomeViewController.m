//
//  HomeViewController.m
//  msgCarrierDemo
//
//  Created by fodlab on 2020/4/17.
//  Copyright © 2020 fodlab. All rights reserved.
//

#import "HomeViewController.h"
#import "Masonry/Masonry.h"
#import "PageOneViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:testBtn];
    [testBtn setTitle:@"load" forState:UIControlStateNormal];
    [testBtn setTitleColor:[UIColor colorWithRed:28.0/255.0 green:147.0/255.0 blue:243.0/255.0 alpha:1.0] forState:UIControlStateNormal];
    [testBtn setTitleColor:[UIColor colorWithRed:135.0/255.0 green:216.0/255.0 blue:80.0/255.0 alpha:1.0] forState:UIControlStateHighlighted];
    [testBtn setTitleColor:[UIColor grayColor] forState:UIControlStateDisabled];
    [testBtn addTarget:self action:@selector(beginTest) forControlEvents:UIControlEventTouchUpInside];
    
    [testBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(@(200));
        make.height.equalTo(@(20));
    }];
}

- (void)beginTest {
    PageOneViewController *vc = [[PageOneViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [self presentViewController:vc animated:YES completion:nil];
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
