//
//  Person.h
//  MethodChainingDemo
//
//  Created by wangxiaodong on 03/05/2019.
//  Copyright © 2019 WXD. All rights reserved.
//
/**
 链式编程：
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

//1.两个普通的方法
-(void)eat;
-(void)sleep;

//2.用 [] 实现连续调用
-(Person *)eat1;
-(Person *)sleep1;

//3.用block实现链式-相当于get
-(void (^)(void))eat3;
-(void (^)(void))sleep3;

//4.用block实现链式-无参数
-(Person *(^)(void))eat4;
-(Person *(^)(void))sleep4;

//5.用block实现链式-带参数
-(Person *(^)(NSString *))eat5;
-(Person *(^)(NSString *))sleep5;

@end

NS_ASSUME_NONNULL_END
