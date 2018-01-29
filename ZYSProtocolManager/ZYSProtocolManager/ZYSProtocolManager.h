//
//  ZYSProtocolManager.h
//  ZYSProtocolManager
//
//  Created by 张永顺 on 2018/1/29.
//  Copyright © 2018年 ideal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYSProtocolManager : NSObject

+ (void)registServiceProvide:(id)provide forProtocol:(Protocol *)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;


@end
