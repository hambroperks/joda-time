//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/ISOYearOfEraDateTimeField.java
//

#ifndef _OrgJodaTimeChronoISOYearOfEraDateTimeField_H_
#define _OrgJodaTimeChronoISOYearOfEraDateTimeField_H_

#include "J2ObjC_header.h"
#include "org/joda/time/field/DecoratedDateTimeField.h"

@class IOSIntArray;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDurationField;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief This field is not publicy exposed by ISOChronology, but rather it is used to
 build the yearOfCentury and centuryOfEra fields.
 It merely drops the sign of
 the year.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeChronoISOYearOfEraDateTimeField : OrgJodaTimeFieldDecoratedDateTimeField

#pragma mark Public

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)years;

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)years;

- (jlong)addWrapFieldWithLong:(jlong)instant
                      withInt:(jint)years;

- (IOSIntArray *)addWrapFieldWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)instant
                                                    withInt:(jint)fieldIndex
                                               withIntArray:(IOSIntArray *)values
                                                    withInt:(jint)years;

- (jint)getWithLong:(jlong)instant;

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant;

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant;

- (jint)getMaximumValue;

- (jint)getMinimumValue;

- (OrgJodaTimeDurationField *)getRangeDurationField;

- (jlong)remainderWithLong:(jlong)instant;

- (jlong)roundCeilingWithLong:(jlong)instant;

- (jlong)roundFloorWithLong:(jlong)instant;

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)year;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeChronoISOYearOfEraDateTimeField)

FOUNDATION_EXPORT OrgJodaTimeDateTimeField *OrgJodaTimeChronoISOYearOfEraDateTimeField_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeChronoISOYearOfEraDateTimeField, INSTANCE_, OrgJodaTimeDateTimeField *)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoISOYearOfEraDateTimeField)

#endif // _OrgJodaTimeChronoISOYearOfEraDateTimeField_H_
