//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/HambroPerks/hambroperks_org/joda-time/src/main/java/org/joda/time/field/LenientDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldLenientDateTimeField")
#ifdef RESTRICT_OrgJodaTimeFieldLenientDateTimeField
#define INCLUDE_ALL_OrgJodaTimeFieldLenientDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldLenientDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeFieldLenientDateTimeField

#if !defined (OrgJodaTimeFieldLenientDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeFieldLenientDateTimeField || defined(INCLUDE_OrgJodaTimeFieldLenientDateTimeField))
#define OrgJodaTimeFieldLenientDateTimeField_

#define RESTRICT_OrgJodaTimeFieldDelegatedDateTimeField 1
#define INCLUDE_OrgJodaTimeFieldDelegatedDateTimeField 1
#include "org/joda/time/field/DelegatedDateTimeField.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;

/*!
 @brief Converts a strict DateTimeField into a lenient one.By being lenient, the
  set method accepts out of bounds values, performing an addition instead.
 <p>
  LenientDateTimeField is thread-safe and immutable.
 @author Brian S O'Neill
 - seealso: org.joda.time.chrono.LenientChronology
 - seealso: StrictDateTimeField
 @since 1.0
 */
@interface OrgJodaTimeFieldLenientDateTimeField : OrgJodaTimeFieldDelegatedDateTimeField

#pragma mark Public

/*!
 @brief Returns a lenient version of the given field.If it is already lenient,
  then it is returned as-is.
 Otherwise, a new LenientDateTimeField is
  returned.
 */
+ (OrgJodaTimeDateTimeField *)getInstanceWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                            withOrgJodaTimeChronology:(OrgJodaTimeChronology *)base;

- (jboolean)isLenient;

/*!
 @brief Set values which may be out of bounds by adding the difference between
  the new value and the current value.
 */
- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value;

#pragma mark Protected

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                       withOrgJodaTimeChronology:(OrgJodaTimeChronology *)base;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)arg0 NS_UNAVAILABLE;

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)arg0
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)arg1 NS_UNAVAILABLE;

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)arg0
                    withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)arg1
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldLenientDateTimeField)

FOUNDATION_EXPORT OrgJodaTimeDateTimeField *OrgJodaTimeFieldLenientDateTimeField_getInstanceWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(OrgJodaTimeDateTimeField *field, OrgJodaTimeChronology *base);

FOUNDATION_EXPORT void OrgJodaTimeFieldLenientDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(OrgJodaTimeFieldLenientDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeChronology *base);

FOUNDATION_EXPORT OrgJodaTimeFieldLenientDateTimeField *new_OrgJodaTimeFieldLenientDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(OrgJodaTimeDateTimeField *field, OrgJodaTimeChronology *base) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldLenientDateTimeField *create_OrgJodaTimeFieldLenientDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeChronology_(OrgJodaTimeDateTimeField *field, OrgJodaTimeChronology *base);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldLenientDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldLenientDateTimeField")
