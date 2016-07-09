//
//  UIView+EventLink.m
//  ResponderDemo
//
//  Created by 刘隆昌 on 15-3-29.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import "UIView+EventLink.h"

@implementation UIView (EventLink)


-(UIViewController*)viewController{
    
    UIResponder * nextRes = [self nextResponder];
    do{
        if ([nextRes isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextRes;
        }else{
            nextRes = [nextRes nextResponder];
        }
    }while(nextRes);
    return nil;
}


@end
