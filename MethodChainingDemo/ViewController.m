//
//  ViewController.m
//  MethodChainingDemo
//
//  Created by wangxiaodong on 03/05/2019.
//  Copyright © 2019 WXD. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *person = [[Person alloc] init];
    //1.普通
    [person eat];
    [person sleep];
    //2.实现连续调用
    [[person eat1] sleep1];
    //3.blcok实现相当于get的链式
    person.eat3();
    person.sleep3();
    //4.blcok实现链式-无参数
    person.eat4().sleep4();
    //5.blcok实现链式-有参数
    person.eat5(@"水果").sleep5(@"10");
}


@end
