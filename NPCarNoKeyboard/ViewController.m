//
//  ViewController.m
//  NPCarNoKeyboard
//
//  Created by HzB on 2017/1/6.
//  Copyright © 2017年 Aleven. All rights reserved.
//

#import "ViewController.h"
#import "NPCarNoInputView.h"

@interface ViewController ()

@property (strong, nonatomic) UITextField *textField;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(90.0, 50, 140, 50.0)];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor blackColor];
    [self.view addSubview:button];
}

- (void)buttonAction:(UIButton *)button{
    __block UIButton *blockButton = button;
    NPCarNoInputView *inputView = [[NPCarNoInputView alloc]init];
    inputView.carNo = button.currentTitle;
    inputView.inputBlock = ^(NSString *carNo){
        [blockButton setTitle:carNo forState:UIControlStateNormal];
    };
    [inputView show];
}


@end
