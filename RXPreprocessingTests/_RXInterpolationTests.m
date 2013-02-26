//
//  _RXInterpolationTests.m
//  RXPreprocessingTests
//
//  Created by Jason Gregori on 2/11/13.
//
//

#import "_RXInterpolationTests.h"

#import "_RXInterpolation.h"

@implementation _RXInterpolationTests

- (void)testNSUIntegerIOS {
    STAssertEqualObjects(@"u", _rx_format_type_specifier_for_value((unsigned int)1), nil);
}

- (void)testNSUIntegerMac {
    STAssertEqualObjects(@"lu", _rx_format_type_specifier_for_value((unsigned long)1), nil);
}

- (void)testNSIntegerIOS {
    STAssertEqualObjects(@"i", _rx_format_type_specifier_for_value((int)1), nil);
}

- (void)testNSIntegerMac {
    STAssertEqualObjects(@"li", _rx_format_type_specifier_for_value((long)1), nil);
}

@end
