//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/field/StrictDateTimeField.java
//

#ifndef _OrgJodaTimeFieldStrictDateTimeField_H_
#define _OrgJodaTimeFieldStrictDateTimeField_H_

@class OrgJodaTimeDateTimeField;

#import "JreEmulation.h"
#include "DelegatedDateTimeField.h"

#define OrgJodaTimeFieldStrictDateTimeField_serialVersionUID 3154803964207950910LL

/**
 @brief Converts a lenient DateTimeField into a strict one.
 By being strict, the set throws an IllegalArgumentException if the value is out of bounds. <p> StrictDateTimeField is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeFieldStrictDateTimeField : OrgJodaTimeFieldDelegatedDateTimeField {
}

/**
 @brief Returns a strict version of the given field.
 If it is already strict, then it is returned as-is. Otherwise, a new StrictDateTimeField is returned.
 */
+ (OrgJodaTimeDateTimeField *)getInstanceWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

- (BOOL)isLenient;

/**
 @brief Does a bounds check before setting the value.
 @throws IllegalArgumentException if the value is invalid
 */
- (long long int)setWithLong:(long long int)instant
                     withInt:(int)value;

@end

__attribute__((always_inline)) inline void OrgJodaTimeFieldStrictDateTimeField_init() {}

J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeFieldStrictDateTimeField, serialVersionUID, long long int)

#endif // _OrgJodaTimeFieldStrictDateTimeField_H_
