//
//  CustomCell.m
//  ResponderDemo
//
//  Created by 刘隆昌 on 15-3-29.
//  Copyright (c) 2015年 刘隆昌. All rights reserved.
//

#import "CustomCell.h"
#import "UIView+EventLink.h"

@implementation CustomCell


-(id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self _initView];
    }
    return self;
    
}

-(void)_initView{
    
    
    UIImage * image = [UIImage imageNamed:@"e.jpg"];
    UIImageView * imageView = [[UIImageView alloc] initWithImage:image];
    imageView.layer.cornerRadius = 8;
    imageView.layer.borderWidth = 9;
    imageView.frame = CGRectMake(10, 10, 80, 80);
    [self addSubview:imageView];
    
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = imageView.frame;
    [button setBackgroundColor:[UIColor clearColor]];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    
    
    
}

-(void)buttonAction:(UIButton*)btn{
    
    UIViewController * view = [[UIViewController alloc]init];
    view.view.backgroundColor = [UIColor whiteColor];
    [self.viewController.navigationController pushViewController:view animated:YES];
    
    
}



@end
