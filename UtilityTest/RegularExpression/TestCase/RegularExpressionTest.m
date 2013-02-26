//
// Created by tatsuya on 2013/02/07.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "RegularExpressionTest.h"

@implementation RegularExpressionTest{
@private
    NSString *message;
}

- (void)setUp {
    [super setUp];

    // Set-up code here.
}

- (void)tearDown {
    // Tear-down code here.

    [super tearDown];
}

-(void) testSplitStringByPattern{

    NSString *regExp = [[NSString alloc] initWithFormat:@"%@", @"(\\[.+\\])\\s(.+)"];
    message = [[NSString alloc] initWithFormat:@"%@", @"[良かった] てすとabcてすと"];


    NSArray *array = [message byPattern:regExp];

    NSInteger count = [array count];

    GHAssertEquals(count, 2, @"分割された要素数が正しくありません");
    GHAssertEqualObjects([array objectAtIndex:0], @"[良かった]", @"感情が正しくありません");
    GHAssertEqualObjects([array objectAtIndex:1], @"てすとabcてすと", @"コメントが正しくありません");
}

- (void)testSplitStringByPatternWhenNotExpectedPattern {
    NSString *regExp = [[NSString alloc] initWithFormat:@"%@", @"(\\[.+\\])\\s(.+)"];
    message = [[NSString alloc] initWithFormat:@"%@",@"[良かった]"];

    NSArray *array = [message byPattern:regExp];

    NSInteger count = [array count];

    GHAssertEquals(count, 0, @"分割された要素数が正しくありません");
}

@end