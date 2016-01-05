//
//  ViewController.m
//  NSProxyDemo
//
//  Created by arbullzhang on 1/4/16.
//  Copyright © 2016 arbullzhang. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableStringAndArray.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    id/*NSMutableStringAndArray*/ stringAndArrayProxy = [[NSMutableStringAndArray alloc] init];
    [stringAndArrayProxy appendString:@"This "];
    [stringAndArrayProxy appendString:@"is "];
    [stringAndArrayProxy appendString:@"a "];
    [stringAndArrayProxy appendString:@"test!"];
    
    [stringAndArrayProxy addObject:@"This is a test!"];
    
    NSLog(@"Count should be 1, it is:%lu", (unsigned long)[stringAndArrayProxy  count]);
    
    if([[stringAndArrayProxy objectAtIndex:0] isEqualToString:@"This is a test!"])
    {
        NSLog(@"Appending successful:%@", stringAndArrayProxy);
    }
    else
    {
        NSLog(@"Appending failed:%@", stringAndArrayProxy);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
