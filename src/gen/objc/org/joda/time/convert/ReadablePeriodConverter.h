//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/convert/ReadablePeriodConverter.java
//

#ifndef _OrgJodaTimeConvertReadablePeriodConverter_H_
#define _OrgJodaTimeConvertReadablePeriodConverter_H_

#include "J2ObjC_header.h"
#include "org/joda/time/convert/AbstractConverter.h"
#include "org/joda/time/convert/PeriodConverter.h"

@class IOSClass;
@class OrgJodaTimeChronology;
@class OrgJodaTimePeriodType;
@protocol OrgJodaTimeReadWritablePeriod;

/**
 @brief ReadablePeriodConverter extracts milliseconds and chronology from a ReadablePeriod.
 @author Stephen Colebourne
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeConvertReadablePeriodConverter : OrgJodaTimeConvertAbstractConverter < OrgJodaTimeConvertPeriodConverter >

#pragma mark Public

/**
 @brief Selects a suitable period type for the given object.
 @param object the object to examine, must not be null
 @return the period type from the readable duration
 @throws NullPointerException if the object is null
 @throws ClassCastException if the object is an invalid type
 */
- (OrgJodaTimePeriodType *)getPeriodTypeWithId:(id)object;

/**
 @brief Returns ReadablePeriod class.
 @return ReadablePeriod.class
 */
- (IOSClass *)getSupportedType;

/**
 @brief Extracts duration values from an object of this converter's type, and sets them into the given ReadWritablePeriod.
 @param duration duration to get modified
 @param object the object to convert, must not be null
 @param chrono the chronology to use
 @throws NullPointerException if the duration or object is null
 @throws ClassCastException if the object is an invalid type
 @throws IllegalArgumentException if the object is invalid
 */
- (void)setIntoWithOrgJodaTimeReadWritablePeriod:(id<OrgJodaTimeReadWritablePeriod>)duration
                                          withId:(id)object
                       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

#pragma mark Protected

/**
 @brief Restricted constructor.
 */
- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeConvertReadablePeriodConverter)

FOUNDATION_EXPORT OrgJodaTimeConvertReadablePeriodConverter *OrgJodaTimeConvertReadablePeriodConverter_INSTANCE_;
J2OBJC_STATIC_FIELD_GETTER(OrgJodaTimeConvertReadablePeriodConverter, INSTANCE_, OrgJodaTimeConvertReadablePeriodConverter *)

FOUNDATION_EXPORT void OrgJodaTimeConvertReadablePeriodConverter_init(OrgJodaTimeConvertReadablePeriodConverter *self);

FOUNDATION_EXPORT OrgJodaTimeConvertReadablePeriodConverter *new_OrgJodaTimeConvertReadablePeriodConverter_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertReadablePeriodConverter)

#endif // _OrgJodaTimeConvertReadablePeriodConverter_H_
