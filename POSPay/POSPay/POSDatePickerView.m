//
//  POSDatePickerView.m
//  POSPay
//
//  Created by LiuZhiqi on 15-3-15.
//  Copyright (c) 2015年 mqq.com. All rights reserved.
//

#import "POSDatePickerView.h"

@implementation POSDatePickerView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (IBAction)cancel:(id)sender {
    [self removeFromSuperview];
}

- (IBAction)confirm:(id)sender {
    
    [self.delegate setTimeWith:self.datePicker.date tag:self.tag];
    [self removeFromSuperview];
    
}
+ (POSDatePickerView *)instanceWithFrame:(CGRect)frame Id:(NSInteger)tag date:(NSDate *)date
{
    
    POSDatePickerView *view = (POSDatePickerView *)[[NSBundle mainBundle] loadNibNamed:@"POSDatePickerView" owner:nil options:nil][0];
    view.frame = frame;
    view.tag=tag;
    view.datePicker.datePickerMode=UIDatePickerModeDate;
    view.datePicker.date=date;
    return view;
}

@end
