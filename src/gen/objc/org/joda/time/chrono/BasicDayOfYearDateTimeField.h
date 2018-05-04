//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/chrono/BasicDayOfYearDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoBasicDayOfYearDateTimeField")
#ifdef RESTRICT_OrgJodaTimeChronoBasicDayOfYearDateTimeField
#define INCLUDE_ALL_OrgJodaTimeChronoBasicDayOfYearDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoBasicDayOfYearDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeChronoBasicDayOfYearDateTimeField

#if !defined (OrgJodaTimeChronoBasicDayOfYearDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeChronoBasicDayOfYearDateTimeField || defined(INCLUDE_OrgJodaTimeChronoBasicDayOfYearDateTimeField))
#define OrgJodaTimeChronoBasicDayOfYearDateTimeField_

#define RESTRICT_OrgJodaTimeFieldPreciseDurationDateTimeField 1
#define INCLUDE_OrgJodaTimeFieldPreciseDurationDateTimeField 1
#include "org/joda/time/field/PreciseDurationDateTimeField.h"

@class IOSIntArray;
@class OrgJodaTimeChronoBasicChronology;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;
@protocol OrgJodaTimeReadablePartial;

@interface OrgJodaTimeChronoBasicDayOfYearDateTimeField : OrgJodaTimeFieldPreciseDurationDateTimeField

#pragma mark Public

- (jint)getWithLong:(jlong)instant;

- (jint)getMaximumValue;

- (jint)getMaximumValueWithLong:(jlong)instant;

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                         withIntArray:(IOSIntArray *)values;

- (jint)getMinimumValue;

- (OrgJodaTimeDurationField *)getRangeDurationField;

- (jboolean)isLeapWithLong:(jlong)instant;

#pragma mark Protected

- (jint)getMaximumValueForSetWithLong:(jlong)instant
                              withInt:(jint)value;

#pragma mark Package-Private

- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology
                            withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)days;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)arg0
                        withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoBasicDayOfYearDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeChronoBasicDayOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicDayOfYearDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *days);

FOUNDATION_EXPORT OrgJodaTimeChronoBasicDayOfYearDateTimeField *new_OrgJodaTimeChronoBasicDayOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *days) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeChronoBasicDayOfYearDateTimeField *create_OrgJodaTimeChronoBasicDayOfYearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *days);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoBasicDayOfYearDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoBasicDayOfYearDateTimeField")
