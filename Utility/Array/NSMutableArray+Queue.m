//
// Created by tatsuya on 2013/01/27.
//
// To change the template use AppCode | Preferences | File Templates.
//

#import "NSMutableArray+Queue.h"

@implementation NSMutableArray (Queue)


- (id)initWithArray:(NSArray *)array {
    self = [super initWithArray:array];
    if (self) {
        dequeCount = 0;
    }
    return self;
}

- (id)dequeue {
    id anObject;
    if ([self count] != 0) {
        anObject = [self objectAtIndex:0];
        [self removeObjectAtIndex:0];

    } else {
        anObject = nil;
    }
    dequeCount++;
    return anObject;
}

- (void)enqueue:(id)anObject {
    if ([self count] != 0) {
        [self addObject:anObject];
    }
}

- (NSInteger)dequeuedCount {
    return dequeCount;
}
@end