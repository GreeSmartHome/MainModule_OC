#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "GRNavigationController.h"
#import "GRTabBarController.h"
#import "MainModuleAPI.h"
#import "GRNavBar.h"
#import "GRTabBar.h"

FOUNDATION_EXPORT double MainModuleVersionNumber;
FOUNDATION_EXPORT const unsigned char MainModuleVersionString[];

