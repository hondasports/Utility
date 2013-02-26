//
// Created by tatsuya on 2013/02/21.
//
// To change the template use AppCode | Preferences | File Templates.
//


#import "NSString+Split.h"

@implementation NSString (Split)

-(NSArray *)byPattern:(NSString *)pattern {

    NSMutableArray *matches = [[NSMutableArray alloc] init];
    NSError *error;
    NSRegularExpression *regExp = [[NSRegularExpression alloc] initWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:&error];
    NSArray *result = [regExp matchesInString:self options:0 range:NSMakeRange(0, [self length])];

    if (error != nil){
        DLog(@"error : %@", error);
    } else{
        for (NSTextCheckingResult *match in result){
            DLog(@"match : %@", match);
            [matches addObject:[self substringWithRange:[match rangeAtIndex:1]]];
            [matches addObject:[self substringWithRange:[match rangeAtIndex:2]]];

            DLog(@"FirstMatch : %@", [self substringWithRange:[match rangeAtIndex:1]]);
            DLog(@"SecondMatch : %@", [self substringWithRange:[match rangeAtIndex:2]]);
        }
    }
    return matches;
}


@end