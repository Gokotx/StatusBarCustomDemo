//
//  ViewController.m
//  StatusBarCustom
//
//  Created by Goko on 13/12/2017.
//  Copyright © 2017 Goko. All rights reserved.
//

#import "ViewController.h"
@import ObjectiveC;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.textView.text = @"";
}

- (IBAction)btnClicked:(id)sender {
//    NSLog(@"%@",sender);
////    Class UIStatusBarForegroundView = NSClassFromString(@"UIStatusBarForegroundView");
//    id statusBarForegroundView = [[[UIApplication sharedApplication] valueForKey:@"statusBar"] valueForKey:@"foregroundView"];
//    UIView * lastView = [(UIView *)statusBarForegroundView subviews].lastObject;
//    CGRect lastFrame = lastView.frame;
//    UILabel * speedView = [UILabel new];
//    speedView.text = @"10M/s";
//    speedView.backgroundColor = [UIColor brownColor];
//    speedView.textColor = [UIColor whiteColor];
//    speedView.frame = CGRectMake(CGRectGetMaxX(lastFrame), 0, 50, 20);
//    [lastView.superview addSubview:speedView];
    
    [self testabc];
    
}
-(void)testabc{
    Class privateClass = objc_getClass([self.textField.text UTF8String]);
    NSObject* workspace = [privateClass performSelector:@selector(defaultWorkspace)];
    [workspace performSelector:@selector(openApplicationWithBundleID:) withObject:@"com.tencent.xin"];
    NSArray *appList = [workspace performSelector:@selector(allApplications)];
    NSLog(@"%@",privateClass);
    NSLog(@"%@",appList);
    self.textView.text = [self.textView.text stringByAppendingFormat:@"\n%@-%@",privateClass,appList];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
