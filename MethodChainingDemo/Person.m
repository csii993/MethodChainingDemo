//
//  Person.m
//  MethodChainingDemo
//
//  Created by wangxiaodong on 03/05/2019.
//  Copyright © 2019 WXD. All rights reserved.
//

#import "Person.h"

@implementation Person

//1、两个普通的方法
-(void)eat
{
    NSLog(@"普通-吃");
}

-(void)sleep
{
    NSLog(@"普通-睡");
}

//2.用 [] 实现连续调用
-(Person *)eat1
{
    NSLog(@"连续-吃");
    return self;
}

-(Person *)sleep1
{
    NSLog(@"连续-睡");
    return self;
}

//3.用block实现链式-相当于get
-(void (^)(void))eat3
{
    void(^eatBlock)(void)= ^{
        NSLog(@"相当于get-吃");
    };
    return eatBlock;
}

-(void (^)(void))sleep3
{
    return ^{
       NSLog(@"相当于get-睡");
    };
}

//4.用block实现链式-无参数
-(Person *(^)(void))eat4
{
    Person *(^eatBlock)(void) = ^{
        NSLog(@"block实现链式-无参数-吃");
        return self;
    };
    return eatBlock;
}

-(Person *(^)(void))sleep4
{
    return ^{
        NSLog(@"block实现链式-无参数-睡");
        return self;
    };
}

//5.用block实现链式-带参数
-(Person *(^)(NSString *))eat5
{
    Person *(^eatBlock)(NSString *) = ^(NSString *foodName){
        NSLog(@"吃：%@",foodName);
        return self;
    };
    return eatBlock;
}

-(Person *(^)(NSString *))sleep5
{
    return ^(NSString *hourStr){
        NSLog(@"睡%@小时",hourStr);
        return self;
    };
}

@end
