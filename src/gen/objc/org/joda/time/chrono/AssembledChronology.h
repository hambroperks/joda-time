//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/chrono/AssembledChronology.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeChronoAssembledChronology")
#ifdef RESTRICT_OrgJodaTimeChronoAssembledChronology
#define INCLUDE_ALL_OrgJodaTimeChronoAssembledChronology 0
#else
#define INCLUDE_ALL_OrgJodaTimeChronoAssembledChronology 1
#endif
#undef RESTRICT_OrgJodaTimeChronoAssembledChronology

#if !defined (OrgJodaTimeChronoAssembledChronology_) && (INCLUDE_ALL_OrgJodaTimeChronoAssembledChronology || defined(INCLUDE_OrgJodaTimeChronoAssembledChronology))
#define OrgJodaTimeChronoAssembledChronology_

#define RESTRICT_OrgJodaTimeChronoBaseChronology 1
#define INCLUDE_OrgJodaTimeChronoBaseChronology 1
#include "org/joda/time/chrono/BaseChronology.h"

@class OrgJodaTimeChronoAssembledChronology_Fields;
@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeZone;
@class OrgJodaTimeDurationField;

/*!
 @brief Abstract Chronology that enables chronologies to be assembled from
  a container of fields.
 <p>
  AssembledChronology is thread-safe and immutable.
 @author Brian S O'Neill
 @since 1.0
 */
@interface OrgJodaTimeChronoAssembledChronology : OrgJodaTimeChronoBaseChronology

#pragma mark Public

- (OrgJodaTimeDurationField *)centuries;

- (OrgJodaTimeDateTimeField *)centuryOfEra;

- (OrgJodaTimeDateTimeField *)clockhourOfDay;

- (OrgJodaTimeDateTimeField *)clockhourOfHalfday;

- (OrgJodaTimeDateTimeField *)dayOfMonth;

- (OrgJodaTimeDateTimeField *)dayOfWeek;

- (OrgJodaTimeDateTimeField *)dayOfYear;

- (OrgJodaTimeDurationField *)days;

- (OrgJodaTimeDateTimeField *)era;

- (OrgJodaTimeDurationField *)eras;

- (jlong)getDateTimeMillisWithInt:(jint)year
                          withInt:(jint)monthOfYear
                          withInt:(jint)dayOfMonth
                          withInt:(jint)millisOfDay;

- (jlong)getDateTimeMillisWithInt:(jint)year
                          withInt:(jint)monthOfYear
                          withInt:(jint)dayOfMonth
                          withInt:(jint)hourOfDay
                          withInt:(jint)minuteOfHour
                          withInt:(jint)secondOfMinute
                          withInt:(jint)millisOfSecond;

- (jlong)getDateTimeMillisWithLong:(jlong)instant
                           withInt:(jint)hourOfDay
                           withInt:(jint)minuteOfHour
                           withInt:(jint)secondOfMinute
                           withInt:(jint)millisOfSecond;

- (OrgJodaTimeDateTimeZone *)getZone;

- (OrgJodaTimeDateTimeField *)halfdayOfDay;

- (OrgJodaTimeDurationField *)halfdays;

- (OrgJodaTimeDateTimeField *)hourOfDay;

- (OrgJodaTimeDateTimeField *)hourOfHalfday;

- (OrgJodaTimeDurationField *)hours;

- (OrgJodaTimeDurationField *)millis;

- (OrgJodaTimeDateTimeField *)millisOfDay;

- (OrgJodaTimeDateTimeField *)millisOfSecond;

- (OrgJodaTimeDateTimeField *)minuteOfDay;

- (OrgJodaTimeDateTimeField *)minuteOfHour;

- (OrgJodaTimeDurationField *)minutes;

- (OrgJodaTimeDateTimeField *)monthOfYear;

- (OrgJodaTimeDurationField *)months;

- (OrgJodaTimeDateTimeField *)secondOfDay;

- (OrgJodaTimeDateTimeField *)secondOfMinute;

- (OrgJodaTimeDurationField *)seconds;

- (OrgJodaTimeDateTimeField *)weekOfWeekyear;

- (OrgJodaTimeDurationField *)weeks;

- (OrgJodaTimeDateTimeField *)weekyear;

- (OrgJodaTimeDateTimeField *)weekyearOfCentury;

- (OrgJodaTimeDurationField *)weekyears;

- (OrgJodaTimeDateTimeField *)year;

- (OrgJodaTimeDateTimeField *)yearOfCentury;

- (OrgJodaTimeDateTimeField *)yearOfEra;

- (OrgJodaTimeDurationField *)years;

#pragma mark Protected

/*!
 @brief Constructor calls the assemble method, enabling subclasses to define its
  supported fields.If a base chronology is supplied, the field set
  initially contains references to each base chronology field.
 <p>
  Other methods in this class will delegate to the base chronology, if it
  can be determined that the base chronology will produce the same results
  as AbstractChronology.
 @param base optional base chronology to copy initial fields from
 @param param optional param object avalable for assemble method
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)base
                                       withId:(id)param;

/*!
 @brief Invoked by the constructor and after deserialization to allow subclasses
  to define all of its supported fields.All unset fields default to
  unsupported instances.
 @param fields container of fields
 */
- (void)assembleWithOrgJodaTimeChronoAssembledChronology_Fields:(OrgJodaTimeChronoAssembledChronology_Fields *)fields;

/*!
 @brief Returns the same base chronology as passed into the constructor.
 */
- (OrgJodaTimeChronology *)getBase;

/*!
 @brief Returns the same param object as passed into the constructor.
 */
- (id)getParam;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeChronoAssembledChronology)

FOUNDATION_EXPORT void OrgJodaTimeChronoAssembledChronology_initWithOrgJodaTimeChronology_withId_(OrgJodaTimeChronoAssembledChronology *self, OrgJodaTimeChronology *base, id param);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoAssembledChronology)

#endif

#if !defined (OrgJodaTimeChronoAssembledChronology_Fields_) && (INCLUDE_ALL_OrgJodaTimeChronoAssembledChronology || defined(INCLUDE_OrgJodaTimeChronoAssembledChronology_Fields))
#define OrgJodaTimeChronoAssembledChronology_Fields_

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDurationField;

/*!
 @brief A container of fields used for assembling a chronology.
 */
@interface OrgJodaTimeChronoAssembledChronology_Fields : NSObject {
 @public
  OrgJodaTimeDurationField *millis_;
  OrgJodaTimeDurationField *seconds_;
  OrgJodaTimeDurationField *minutes_;
  OrgJodaTimeDurationField *hours_;
  OrgJodaTimeDurationField *halfdays_;
  OrgJodaTimeDurationField *days_;
  OrgJodaTimeDurationField *weeks_;
  OrgJodaTimeDurationField *weekyears_;
  OrgJodaTimeDurationField *months_;
  OrgJodaTimeDurationField *years_;
  OrgJodaTimeDurationField *centuries_;
  OrgJodaTimeDurationField *eras_;
  OrgJodaTimeDateTimeField *millisOfSecond_;
  OrgJodaTimeDateTimeField *millisOfDay_;
  OrgJodaTimeDateTimeField *secondOfMinute_;
  OrgJodaTimeDateTimeField *secondOfDay_;
  OrgJodaTimeDateTimeField *minuteOfHour_;
  OrgJodaTimeDateTimeField *minuteOfDay_;
  OrgJodaTimeDateTimeField *hourOfDay_;
  OrgJodaTimeDateTimeField *clockhourOfDay_;
  OrgJodaTimeDateTimeField *hourOfHalfday_;
  OrgJodaTimeDateTimeField *clockhourOfHalfday_;
  OrgJodaTimeDateTimeField *halfdayOfDay_;
  OrgJodaTimeDateTimeField *dayOfWeek_;
  OrgJodaTimeDateTimeField *dayOfMonth_;
  OrgJodaTimeDateTimeField *dayOfYear_;
  OrgJodaTimeDateTimeField *weekOfWeekyear_;
  OrgJodaTimeDateTimeField *weekyear_;
  OrgJodaTimeDateTimeField *weekyearOfCentury_;
  OrgJodaTimeDateTimeField *monthOfYear_;
  OrgJodaTimeDateTimeField *year_;
  OrgJodaTimeDateTimeField *yearOfEra_;
  OrgJodaTimeDateTimeField *yearOfCentury_;
  OrgJodaTimeDateTimeField *centuryOfEra_;
  OrgJodaTimeDateTimeField *era_;
}

#pragma mark Public

/*!
 @brief Copy the supported fields from a chronology into this container.
 */
- (void)copyFieldsFromWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chrono OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeChronoAssembledChronology_Fields)

J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, millis_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, seconds_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, minutes_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, hours_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, halfdays_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, days_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, weeks_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, weekyears_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, months_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, years_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, centuries_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, eras_, OrgJodaTimeDurationField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, millisOfSecond_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, millisOfDay_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, secondOfMinute_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, secondOfDay_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, minuteOfHour_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, minuteOfDay_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, hourOfDay_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, clockhourOfDay_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, hourOfHalfday_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, clockhourOfHalfday_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, halfdayOfDay_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, dayOfWeek_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, dayOfMonth_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, dayOfYear_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, weekOfWeekyear_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, weekyear_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, weekyearOfCentury_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, monthOfYear_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, year_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, yearOfEra_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, yearOfCentury_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, centuryOfEra_, OrgJodaTimeDateTimeField *)
J2OBJC_FIELD_SETTER(OrgJodaTimeChronoAssembledChronology_Fields, era_, OrgJodaTimeDateTimeField *)

FOUNDATION_EXPORT void OrgJodaTimeChronoAssembledChronology_Fields_init(OrgJodaTimeChronoAssembledChronology_Fields *self);

FOUNDATION_EXPORT OrgJodaTimeChronoAssembledChronology_Fields *new_OrgJodaTimeChronoAssembledChronology_Fields_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeChronoAssembledChronology_Fields *create_OrgJodaTimeChronoAssembledChronology_Fields_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeChronoAssembledChronology_Fields)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeChronoAssembledChronology")
