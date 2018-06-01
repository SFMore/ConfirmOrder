//
//  ConfirmOrderViewController.h
//  ConfirmOrder
//
//  Created by zsf on 2018/6/1.
//  Copyright © 2018年 zsf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ConfirmOrderViewController : UIViewController
- (instancetype)initWithGoodsId:(NSString *)goodsId sureComplete:(dispatch_block_t)sureComplete;
@end
