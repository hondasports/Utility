//
// Created by tatsuya on 2013/01/27.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "ArrayUtilityTest.h"

@implementation ArrayUtilityTest {
    NSArray *arrayTemp;

}
@synthesize array;


- (void)setUp {
    [super setUp];

    arrayTemp = [[NSArray alloc] initWithObjects:@"aaa", @"bbb", @"ccc", nil];

    // Set-up code here.
    array = [[NSMutableArray alloc] initWithArray:arrayTemp];
}

- (void)tearDown {
    // Tear-down code here.

    [super tearDown];
}

- (void)testInitWithArray {
    GHAssertNotNil(array, @"初期化されていません");
}


- (void)testDequeue {
    [[NSMutableArray alloc] initWithArray:arrayTemp];

    id anObject = [array dequeue];
    NSInteger count = [array count];
    GHAssertNotNil(anObject, @"オブジェクトがありません");
    GHAssertEquals(anObject, @"aaa", @"値が正しくありません");
    GHAssertEquals(count, 2, @"要素数が正しくありません");
}

- (void)testEnqueue {
    [[NSMutableArray alloc] initWithArray:arrayTemp];

    [array enqueue:@"123"];

    NSInteger countTemp = [arrayTemp count] + 1;
    NSInteger count = [array count];
    GHAssertEquals(count, countTemp, @"要素数が正しくありません");

    id anObject = [array lastObject];
    GHAssertEquals(anObject, @"123", @"値が正しくありません");
}

- (void)testDequeuedCount {
    [[NSMutableArray alloc] initWithArray:arrayTemp];
    id anOBject = [array dequeue];
    anOBject = [array dequeue];
    GHAssertEquals([array dequeuedCount], 2, @"Dequeueされた回数が正しくありません");
}
@end