//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/convert/CalendarConverter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeConvertCalendarConverter")
#ifdef RESTRICT_OrgJodaTimeConvertCalendarConverter
#define INCLUDE_ALL_OrgJodaTimeConvertCalendarConverter 0
#else
#define INCLUDE_ALL_OrgJodaTimeConvertCalendarConverter 1
#endif
#undef RESTRICT_OrgJodaTimeConvertCalendarConverter

#if !defined (OrgJodaTimeConvertCalendarConverter_) && (INCLUDE_ALL_OrgJodaTimeConvertCalendarConverter || defined(INCLUDE_OrgJodaTimeConvertCalendarConverter))
#define OrgJodaTimeConvertCalendarConverter_

#define RESTRICT_OrgJodaTimeConvertAbstractConverter 1
#define INCLUDE_OrgJodaTimeConvertAbstractConverter 1
#include "org/joda/time/convert/AbstractConverter.h"

#define RESTRICT_OrgJodaTimeConvertInstantConverter 1
#define INCLUDE_OrgJodaTimeConvertInstantConverter 1
#include "org/joda/time/convert/InstantConverter.h"

#define RESTRICT_OrgJodaTimeConvertPartialConverter 1
#define INCLUDE_OrgJodaTimeConvertPartialConverter 1
#include "org/joda/time/convert/PartialConverter.h"

@class IOSClass;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeZone;

/*!
 @brief CalendarConverter converts a java util Calendar to an instant or partial.
 The Calendar is converted to milliseconds and the chronology that best
 matches the calendar.
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeConvertCalendarConverter : OrgJodaTimeConvertAbstractConverter < OrgJodaTimeConvertInstantConverter, OrgJodaTimeConvertPartialConverter >

#pragma mark Public

/*!
 @brief Gets the chronology.
 <p>
 If a chronology is specified then it is used.
 Otherwise, it is the GJChronology if a GregorianCalendar is used,
 BuddhistChronology if a BuddhistCalendar is used or ISOChronology otherwise.
 The time zone is extracted from the calendar if possible, default used if not.
 @param object  the Calendar to convert, must not be null
 @param chrono  the chronology to use, null means use Calendar
 @return the chronology, never null
 @throws NullPointerException if the object is null
 @throws ClassCastException if the object is an invalid type
 */
- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                     withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Gets the chronology, which is the GJChronology if a GregorianCalendar is used,
 BuddhistChronology if a BuddhistCalendar is used or ISOChronology otherwise.
 The time zone specified is used in preference to that on the calendar.
 @param object  the Calendar to convert, must not be null
 @param zone  the specified zone to use, null means default zone
 @return the chronology, never null
 @throws NullPointerException if the object is null
 @throws ClassCastException if the object is an invalid type
 */
- (OrgJodaTimeChronology *)getChronologyWithId:(id)object
                   withOrgJodaTimeDateTimeZone:(OrgJodaTimeDateTimeZone *)zone;

/*!
 @brief Gets the millis, which is the Calendar millis value.
 @param object  the Calendar to convert, must not be null
 @param chrono  the chronology result from getChronology, non-null
 @return the millisecond value
 @throws NullPointerException if the object is null
 @throws ClassCastException if the object is an invalid type
 */
- (jlong)getInstantMillisWithId:(id)object
      withOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono;

/*!
 @brief Returns Calendar.class.
 @return Calendar.class
 */
- (IOSClass *)getSupportedType;

#pragma mark Protected

/*!
 @brief Restricted constructor.
 */
- (instancetype)init;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeConvertCalendarConverter)

/*!
 @brief Singleton instance.
 */
inline OrgJodaTimeConvertCalendarConverter *OrgJodaTimeConvertCalendarConverter_get_INSTANCE();
/*! INTERNAL ONLY - Use accessor function from above. */
FOUNDATION_EXPORT OrgJodaTimeConvertCalendarConverter *OrgJodaTimeConvertCalendarConverter_INSTANCE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeConvertCalendarConverter, INSTANCE, OrgJodaTimeConvertCalendarConverter *)

FOUNDATION_EXPORT void OrgJodaTimeConvertCalendarConverter_init(OrgJodaTimeConvertCalendarConverter *self);

FOUNDATION_EXPORT OrgJodaTimeConvertCalendarConverter *new_OrgJodaTimeConvertCalendarConverter_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeConvertCalendarConverter *create_OrgJodaTimeConvertCalendarConverter_init();

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeConvertCalendarConverter)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeConvertCalendarConverter")
