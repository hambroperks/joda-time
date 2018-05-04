//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/field/StrictDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldStrictDateTimeField")
#ifdef RESTRICT_OrgJodaTimeFieldStrictDateTimeField
#define INCLUDE_ALL_OrgJodaTimeFieldStrictDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldStrictDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeFieldStrictDateTimeField

#if !defined (OrgJodaTimeFieldStrictDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeFieldStrictDateTimeField || defined(INCLUDE_OrgJodaTimeFieldStrictDateTimeField))
#define OrgJodaTimeFieldStrictDateTimeField_

#define RESTRICT_OrgJodaTimeFieldDelegatedDateTimeField 1
#define INCLUDE_OrgJodaTimeFieldDelegatedDateTimeField 1
#include "org/joda/time/field/DelegatedDateTimeField.h"

@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;

@interface OrgJodaTimeFieldStrictDateTimeField : OrgJodaTimeFieldDelegatedDateTimeField

#pragma mark Public

+ (OrgJodaTimeDateTimeField *)getInstanceWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

- (jboolean)isLenient;

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value;

#pragma mark Protected

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

// Disallowed inherited constructors, do not use.

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)arg0
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)arg1 NS_UNAVAILABLE;

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)arg0
                    withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)arg1
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)arg2 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldStrictDateTimeField)

FOUNDATION_EXPORT OrgJodaTimeDateTimeField *OrgJodaTimeFieldStrictDateTimeField_getInstanceWithOrgJodaTimeDateTimeField_(OrgJodaTimeDateTimeField *field);

FOUNDATION_EXPORT void OrgJodaTimeFieldStrictDateTimeField_initWithOrgJodaTimeDateTimeField_(OrgJodaTimeFieldStrictDateTimeField *self, OrgJodaTimeDateTimeField *field);

FOUNDATION_EXPORT OrgJodaTimeFieldStrictDateTimeField *new_OrgJodaTimeFieldStrictDateTimeField_initWithOrgJodaTimeDateTimeField_(OrgJodaTimeDateTimeField *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldStrictDateTimeField *create_OrgJodaTimeFieldStrictDateTimeField_initWithOrgJodaTimeDateTimeField_(OrgJodaTimeDateTimeField *field);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldStrictDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldStrictDateTimeField")
