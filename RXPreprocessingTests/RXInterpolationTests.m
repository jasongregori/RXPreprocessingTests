//
//  RXInterpolationTests.m
//  RXPreprocessingTests
//
//  Created by Jason Gregori on 3/3/13.
//
//

#import "RXInterpolationTests.h"

#import "RXInterpolation.h"

@implementation RXInterpolationTests

- (void)testOneItem {
    STAssertEqualObjects(@"1", rx_q(1), nil);
}

- (void)testArrays {
    NSString *s = rx_q(@"look! I can log things!\n", @[@"Things like this!\n"][0], "And things like this too!");
    STAssertEqualObjects(s, @"look! I can log things!\nThings like this!\nAnd things like this too!", nil);
}

- (void)testMultipleItems {
    STAssertEqualObjects(@"123", rx_q(1, 2, 3), nil);
}

@end
