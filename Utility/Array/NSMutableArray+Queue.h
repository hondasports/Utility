//
// Created by tatsuya on 2013/01/27.
//
// To change the template use AppCode | Preferences | File Templates.
//

#import <Foundation/Foundation.h>
#import "NSMutableArray+Local.h"

@interface NSMutableArray (Queue)

- (id)dequeue;

- (void)enqueue :(id)anObject;

- (NSInteger)dequeuedCount;
@end