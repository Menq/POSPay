//
//  POSPaymentResultController.m
//  POSPay
//
//  Created by LiuZhiqi on 15-1-7.
//  Copyright (c) 2015年 mqq.com. All rights reserved.
//

#import "POSPaymentResultController.h"

@interface POSPaymentResultController ()

@end

@implementation POSPaymentResultController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)finish:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
