//
//  AppReviewer.h
//  AppReviewer
//
//  Created by Jeff on 11/12/2013.
//  Copyright (c) 2013 Tipping Canoe. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppReviewer : NSObject
+ (void)setItunesId:(NSString *)itunesId;
+ (void)goToAppStore;
+ (void)goToReviewPage;
@end
