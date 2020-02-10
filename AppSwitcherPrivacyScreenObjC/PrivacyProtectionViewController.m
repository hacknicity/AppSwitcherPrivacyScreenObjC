//
//  PrivacyProtectionViewController.m
//  AppSwitcherPrivacyScreenObjC
//
//  Created by Geoff Hackworth on 10/02/2020.
//  Copyright © 2020 Hacknicity. All rights reserved.
//

#import "PrivacyProtectionViewController.h"

@interface PrivacyProtectionViewController ()

@property (strong, nonnull, nonatomic) UILabel *privacyLabel;

@end


@implementation PrivacyProtectionViewController

- (instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    // In my opinion, it looks a bit better to position the label centred in the top two thirds of the screen rather than in the middle
    CGRect frame, remainder;
    CGFloat height = CGRectGetHeight(self.view.bounds) * 0.66;
    CGRectDivide(self.view.bounds, &frame, &remainder, height, CGRectMinYEdge);

    self.privacyLabel.frame = frame;
}

- (UILabel *)privacyLabel
{
    if (_privacyLabel == nil) {
        _privacyLabel = [[UILabel alloc] init];

        _privacyLabel.font = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
        _privacyLabel.adjustsFontForContentSizeCategory = YES;
        _privacyLabel.adjustsFontSizeToFitWidth = YES;

        _privacyLabel.textAlignment = NSTextAlignmentCenter;
        _privacyLabel.textColor = [UIColor grayColor];

        _privacyLabel.numberOfLines = 0;
        _privacyLabel.text = @"Content hidden\nto protect\nyour privacy";

        [self.view addSubview:_privacyLabel];
    }

    return _privacyLabel;
}

@end
