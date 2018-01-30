//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/chrono/BasicWeekOfWeekyearDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField")
#ifdef RESTRICT_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField
#define INCLUDE_ALL_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField

#if !defined (OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField || defined(INCLUDE_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField))
#define OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_

#define RESTRICT_OrgJodaTimeFieldPreciseDurationDateTimeField 1
#define INCLUDE_OrgJodaTimeFieldPreciseDurationDateTimeField 1
#include "org/joda/time/field/PreciseDurationDateTimeField.h"

@class IOSIntArray;
@class OrgJodaTimeChronoBasicChronology;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;
@protocol OrgJodaTimeReadablePartial;

/*!
 @brief Provides time calculations for the week of a week based year component of time.
 @author Guy Allard
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.1, refactored from GJWeekOfWeekyearDateTimeField
 */
@interface OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField : OrgJodaTimeFieldPreciseDurationDateTimeField

#pragma mark Public

/*!
 @brief Get the week of a week based year component of the specified time instant.
 - seealso: org.joda.time.DateTimeField
 @param instant the time instant in millis to query.
 @return the week of the year extracted from the input.
 */
- (jint)getWithLong:(jlong)instant;

- (jint)getMaximumValue;

- (jint)getMaximumValueWithLong:(jlong)instant;

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial;

- (jint)getMaximumValueWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)partial
                                         withIntArray:(IOSIntArray *)values;

- (jint)getMinimumValue;

- (OrgJodaTimeDurationField *)getRangeDurationField;

- (jlong)remainderWithLong:(jlong)instant;

- (jlong)roundCeilingWithLong:(jlong)instant;

- (jlong)roundFloorWithLong:(jlong)instant;

#pragma mark Protected

- (jint)getMaximumValueForSetWithLong:(jlong)instant
                              withInt:(jint)value;

#pragma mark Package-Private

/*!
 @brief Restricted constructor
 */
- (instancetype)initWithOrgJodaTimeChronoBasicChronology:(OrgJodaTimeChronoBasicChronology *)chronology
                            withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)weeks;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)arg0
                        withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)arg1 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField *self, OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *weeks);

FOUNDATION_EXPORT OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField *new_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *weeks) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField *create_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField_initWithOrgJodaTimeChronoBasicChronology_withOrgJodaTimeDurationField_(OrgJodaTimeChronoBasicChronology *chronology, OrgJodaTimeDurationField *weeks);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoBasicWeekOfWeekyearDateTimeField")
