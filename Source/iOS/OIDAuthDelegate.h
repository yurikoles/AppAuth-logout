//
//  OIDAuthDelegate.h
//  AppAuth
//
//  Created by Yurii Kolesnykov on 2019-05-22.
//  Copyright © 2019 OpenID Foundation. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol OIDAuthDelegate <NSObject>

@required
- (void)refresh;
- (void)showAlertWithTitle:(nullable NSString *)title
                   message:(nullable NSString *)message
                   actions:(NSArray<UIAlertAction *>*)actions;

@end

NS_ASSUME_NONNULL_END
