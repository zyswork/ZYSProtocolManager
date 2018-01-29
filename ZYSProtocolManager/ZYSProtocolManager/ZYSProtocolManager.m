//
//  ZYSProtocolManager.m
//  ZYSProtocolManager
//
//  Created by 张永顺 on 2018/1/29.
//  Copyright © 2018年 ideal. All rights reserved.
//

#import "ZYSProtocolManager.h"

@interface ZYSProtocolManager ()

@property (nonatomic,strong) NSMutableDictionary * serviceProvideSource;

@end

@implementation ZYSProtocolManager

+(ZYSProtocolManager *)sharedInstance
{
    static ZYSProtocolManager * instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc]init];
    });
    return instance;
    
}
- (instancetype)init
{
    self = [super init];
    if (self) {
        _serviceProvideSource = [[NSMutableDictionary alloc]init];
    }
    return self;
}
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol
{
    if (provide == nil || protocol == nil)
        return;
    [[self sharedInstance].serviceProvideSource setObject:provide forKey:NSStringFromProtocol(protocol)];
    
}
+ (id)serviceProvideForProtocol:(Protocol *)protocol
{
    return [[self sharedInstance].serviceProvideSource objectForKey:NSStringFromProtocol(protocol)];
}

@end
