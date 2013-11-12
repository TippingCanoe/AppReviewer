//
//  AppReviewer.m
//  AppReviewer
//
//  Created by Jeff on 11/12/2013.
//  Copyright (c) 2013 Tipping Canoe. All rights reserved.
//

#import "AppReviewer.h"

#define ARAppStoreiOS7URLFormat @"itms-apps://itunes.apple.com/app/id%@"
#define ARAppStoreURLFormat @"itms-apps://itunes.apple.com/app/id%@"
#define ARReviewsiOS7URLFormat @"itms-apps://itunes.apple.com/app/id%@"
#define ARReviewsFormat @"itms-apps://itunes.apple.com/WebObjects/MZStore.woa/wa/viewContentsUserReviews?type=Purple+Software&id=%@"

#define IS_IOS7 ([[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch] != NSOrderedAscending)


@implementation AppReviewer

static NSString *itunesId;

+ (void)setItunesId:(NSString *)itid{
    itunesId = itid;
}

+ (void)goToAppStore{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:(IS_IOS7?ARAppStoreiOS7URLFormat:ARAppStoreURLFormat),itunesId]]];
}

+ (void)goToReviewPage{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:(IS_IOS7?ARReviewsiOS7URLFormat:ARReviewsFormat),itunesId]]];
}
@end
