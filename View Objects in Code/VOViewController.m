//
//  VOViewController.m
//  View Objects in Code
//
//  Created by Tarrant Cutler on 2/23/14.
//  Copyright (c) 2014 Tarrant Cutler. All rights reserved.
//

#import "VOViewController.h"

@interface VOViewController ()

@property (strong, nonatomic)UITextField *textField1;
@property (strong, nonatomic)UILabel *label1;

@end

@implementation VOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect myLabelFrame = CGRectMake(20, 60, 280, 22);
    self.label1 = [[UILabel alloc] initWithFrame:myLabelFrame];
    self.label1.backgroundColor = [UIColor lightGrayColor];
    self.label1.textColor = [UIColor whiteColor];
    [self.view addSubview:self.label1];
    
    CGRect myTextFieldFrame = CGRectMake(20, 110, 280, 30);
    self.textField1 = [[UITextField alloc] initWithFrame:myTextFieldFrame];
    self.textField1.backgroundColor = [UIColor cyanColor];
    self.textField1.placeholder = @"This is text field 1";
    [self.view addSubview:self.textField1];
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(20, 160, 280, 30);
    [button1 setTitle:@"Press me" forState:UIControlStateNormal];
    button1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:button1];
    
    [button1 addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didPressButton:(UIButton *)sender
{
    self.label1.text = self.textField1.text;
    [self.textField1 resignFirstResponder];
}

@end
