//
// Created by tatsuya on 2013/02/07.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import <GHUnitIOS/GHUnit.h>
#import "NSString+Split.h"

@interface RegularExpressionTest : GHTestCase

-(void) testSplitStringByPattern;

-(void) testSplitStringByPatternWhenNotExpectedPattern;

@end