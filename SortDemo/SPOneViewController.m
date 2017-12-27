//
//  SPOneViewController.m
//  SortDemo
//
//  Created by ShiPanpan on 2017/12/23.
//  Copyright © 2017年 ShiPanpan. All rights reserved.
//

#import "SPOneViewController.h"

@interface SPOneViewController ()

@end

@implementation SPOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *oneArray = [NSArray arrayWithObjects:@"111",@"222", nil];
    NSArray *twoArray = [oneArray copy];
    NSLog(@"oneArray的属性值为%@,地址为%p,类型为%@",oneArray,oneArray,[oneArray class]);
    NSLog(@"twoArray的属性值为%@,地址为%p,类型为%@",twoArray,twoArray,[twoArray class]);
    
    oneArray = [NSArray arrayWithObjects:@"333",@"444", nil];
//    [oneArray addObject:@"333"];
    NSLog(@"oneArray的属性值为%@,地址为%p,类型为%@",oneArray,oneArray,[oneArray class]);
    NSLog(@"twoArray的属性值为%@,地址为%p,类型为%@",twoArray,twoArray,[twoArray class]);
}

- (void)test {
    
    NSLog(@"赋值后oneNameArray的属性值为%@,地址为%p,类型为%@",self.oneNameArray,self.oneNameArray,[self.oneNameArray class]);
    NSMutableArray *mutableArray = [self.oneNameArray mutableCopy];
    NSLog(@"赋值后mutableArray的属性值为%@,地址为%p,类型为%@",mutableArray,mutableArray,[self.oneNameArray class]);
    
    //    [self.oneNameArray addObject:@"333"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
