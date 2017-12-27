//
//  ViewController.m
//  SortDemo
//
//  Created by ShiPanpan on 2017/12/22.
//  Copyright © 2017年 ShiPanpan. All rights reserved.
//

#import "ViewController.h"
#import "SPOneViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray *nameArray;
@property (nonatomic, strong) NSArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.nameArray = [NSMutableArray arrayWithObjects:@"111", @"222", nil];
    
    NSMutableString *string = [NSMutableString stringWithString:@"origin"];
    NSString *stringCopy = [string copy];
    NSLog(@"\nstring的内容：%@,\nstring的地址：%p,\nstring的类型为%@\n",string,string,[string class]);
    NSLog(@"\nstringCopy的内容：%@\n,stringCopy的地址：%p\n,stringCopy的类型为%@\n",stringCopy,stringCopy,[stringCopy class]);

    [string appendString:@"123"];
    NSLog(@"\nstring的内容：%@\n,string的地址：%p\n",string,string);
    NSLog(@"\nstringCopy的内容：%@\n,stringCopy的地址：%p\n",stringCopy,stringCopy);
    
    [self test];
    [self addButton];
    
}

- (void)tap {
    SPOneViewController *nextVC = [[SPOneViewController alloc] init];
//    NSLog(@"赋值前nameArray的属性值为%@,地址为%p,类型为%@",self.nameArray,self.nameArray,[self.nameArray class]);
    nextVC.oneNameArray = self.nameArray;
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)addButton {
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, 200, 100)];
    button.backgroundColor = [UIColor greenColor];
    [self.view addSubview:button];
    [button setTitle:@"跳转下一个页面" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(tap) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)viewWillAppear:(BOOL)animated {
//    NSLog(@"页面返回后nameArray的属性值为%@,地址为%p,类型为%@",self.nameArray,self.nameArray,[self.nameArray class]);
}
   
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)test2 {
//    NSMutableArray *mutableArray = [NSMutableArray arrayWithObjects:@"1", @"2", nil];
//    self.mutableArray = mutableArray;
//    [self.mutableArray removeObjectAtIndex:0];
}

- (void)test {
//    self.nameStr = @"sp1111";
//    NSLog(@"没有赋值前nameStr的属性值为%@,地址为%p",self.nameStr,self.nameStr);
//    NSMutableString *mutableStr = [NSMutableString stringWithFormat:@"%@",@"sp2222"];
//    NSLog(@"mutableStr的值为%@,地址为%p",mutableStr,mutableStr);
//    self.nameStr = mutableStr;
//    NSLog(@"赋值后nameStr的属性值为%@,地址为%p",self.nameStr,self.nameStr);
}

@end
