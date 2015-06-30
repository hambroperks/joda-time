//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/convert/InstantConverter.java
//

#ifndef _OrgJodaTimeConvertInstantConverter_H_
#define _OrgJodaTimeConvertInstantConverter_H_

#include "J2ObjC_header.h"
#include "org/joda/time/convert/Converter.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

/**
 @brief InstantConverter defines how an object is converted to milliseconds/chronology.
 <p> The two methods in this interface must be called in order, as the <code>getInstantMillis</code> method relies on the result of the <code>getChronology</code> method being passed in.
 @author Stephen Colebourne
 @since 1.0
 */
@protocol OrgJodaTimeConvertInstantConverter < OrgJodaTimeConvertConverter, NSObject, JavaObject >

/**
 @brief Extracts the chronology from an object of this converter's type where the time zone is specified.
 @param object the object to convert
 @param zone the specified zone to use, null means default zone
 @return the chronology, never null
 @throws ClassCastException if the object is invalid
 */
- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                   withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/**
 @brief Extracts the chronology from an object of this converter's type where the chronology may be specified.
 <p> If the chronology is non-null it should be used. If it is null, then the object should be queried, and if it has no chronology then ISO default is used.
 @param object the object to convert
 @param chrono the chronology to use, null means use object
 @return the chronology, never null
 @throws ClassCastException if the object is invalid
 */
- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                     withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/**
 @brief Extracts the millis from an object of this converter's type.
 <p> The chronology passed in is the result of the call to <code>getChronology</code>.
 @param object the object to convert
 @param chrono the chronology to use, which is the non-null result of getChronology()
 @return the millisecond instant
 @throws ClassCastException if the object is invalid
 @throws IllegalArgumentException if object conversion fails
 */
- (jlong)getInstantMillisWithId:(id)object
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeConvertInstantConverter)

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertInstantConverter)

#endif // _OrgJodaTimeConvertInstantConverter_H_
