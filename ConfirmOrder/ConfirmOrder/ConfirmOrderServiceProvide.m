//
//  ConfirmOrderServiceProvide.m
//  ConfirmOrder
//
//  Created by zsf on 2018/6/1.
//  Copyright © 2018年 zsf. All rights reserved.
//

#import "ConfirmOrderServiceProvide.h"
#import <ProtocolManager/ProtocolManager.h>
#import <ConfirmOrderServiceProtocol/ConfirmOrderServiceProtocol.h>

#import "ConfirmOrderViewController.h"

@interface ConfirmOrderServiceProvide()<ConfirmOrderServiceProtocol>


@end

@implementation ConfirmOrderServiceProvide
+ (void)load
{
    [ProtocolManager registServiceProvide:[self new] forProtocol:@protocol(ConfirmOrderServiceProtocol)];
}

- (UIViewController *)confirmOrderViewControllerWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete
{
    ConfirmOrderViewController *confirmOrderVC = [[ConfirmOrderViewController alloc] initWithGoodsId:goodsId sureComplete:sureComplete];
    return confirmOrderVC;
}


@end
