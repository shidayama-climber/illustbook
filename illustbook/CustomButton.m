//
//  CustomButton.m
//  illustbook
//
//  Created by shidayamasyuuhei on 2018/02/09.
//  Copyright © 2018年 shidayamasyuuhei. All rights reserved.
//

#import "CustomButton.h"

@implementation CustomButton


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [self addTarget:self action:@selector(push:) forControlEvents:UIControlEventTouchDown];
    self.alpha = 0.02f;
}

- (void)push:(UIButton*)button{
    if(self.alpha == 0.02f){
        self.alpha = 1;
    }else if(self.alpha == 1){
        self.alpha = 0.02f;
    }
}



@end
