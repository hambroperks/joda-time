//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/base/BaseLocal.java
//

#ifndef _OrgJodaTimeBaseBaseLocal_H_
#define _OrgJodaTimeBaseBaseLocal_H_

#include "J2ObjC_header.h"
#include "org/joda/time/base/AbstractPartial.h"

/*!
 @brief BaseLocal is an abstract implementation of ReadablePartial that
 use a local milliseconds internal representation.
 <p>
 This class should generally not be used directly by API users.
 The <code>org.joda.time.ReadablePartial</code> interface should be used when different 
 kinds of partial objects are to be referenced.
 <p>
 BasePartial subclasses may be mutable and not thread-safe.
 @author Stephen Colebourne
 @since 1.5
 */
@interface OrgJodaTimeBaseBaseLocal : OrgJodaTimeBaseAbstractPartial

#pragma mark Protected

/*!
 @brief Constructs a partial with the current time, using ISOChronology in
 the default zone to extract the fields.
 <p>
 The constructor uses the default time zone, resulting in the local time
 being initialised. Once the constructor is complete, all further calculations
 are performed without reference to a timezone (by switching to UTC).
 */
- (instancetype)init;

/*!
 @brief Gets the local milliseconds from the Java epoch
 of 1970-01-01T00:00:00 (not fixed to any specific time zone).
 <p>
 This method is useful in certain circustances for high performance
 access to the datetime fields.
 @return the number of milliseconds since 1970-01-01T00:00:00
 */
- (jlong)getLocalMillis;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeBaseBaseLocal)

FOUNDATION_EXPORT void OrgJodaTimeBaseBaseLocal_init(OrgJodaTimeBaseBaseLocal *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeBaseBaseLocal)

#endif // _OrgJodaTimeBaseBaseLocal_H_
