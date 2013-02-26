//
// Created by tatsuya on 2013/01/27.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import <Foundation/Foundation.h>
#import <GHUnitIOS/GHUnit.h>
#import "NSMutableArray+Queue.h"


@interface ArrayUtilityTest : GHTestCase {
@private
    NSMutableArray *array;
}
@property(nonatomic, strong) NSMutableArray *array;


- (void)testDequeue;

- (void)testEnqueue;

- (void)testDequeuedCount;
@end