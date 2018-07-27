//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/field/PreciseDurationField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField")
#ifdef RESTRICT_OrgJodaTimeFieldPreciseDurationField
#define INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField 1
#endif
#undef RESTRICT_OrgJodaTimeFieldPreciseDurationField

#if !defined (OrgJodaTimeFieldPreciseDurationField_) && (INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField || defined(INCLUDE_OrgJodaTimeFieldPreciseDurationField))
#define OrgJodaTimeFieldPreciseDurationField_

#define RESTRICT_OrgJodaTimeFieldBaseDurationField 1
#define INCLUDE_OrgJodaTimeFieldBaseDurationField 1
#include "org/joda/time/field/BaseDurationField.h"

@class OrgJodaTimeDurationFieldType;

@interface OrgJodaTimeFieldPreciseDurationField : OrgJodaTimeFieldBaseDurationField

#pragma mark Public

- (instancetype)initWithOrgJodaTimeDurationFieldType:(OrgJodaTimeDurationFieldType *)type
                                            withLong:(jlong)unitMillis;

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value;

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value;

- (jboolean)isEqual:(id)obj;

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant;

- (jlong)getMillisWithInt:(jint)value
                 withLong:(jlong)instant;

- (jlong)getMillisWithLong:(jlong)value
                  withLong:(jlong)instant;

- (jlong)getUnitMillis;

- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant;

- (NSUInteger)hash;

- (jboolean)isPrecise;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldPreciseDurationField)

FOUNDATION_EXPORT void OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeFieldPreciseDurationField *self, OrgJodaTimeDurationFieldType *type, jlong unitMillis);

FOUNDATION_EXPORT OrgJodaTimeFieldPreciseDurationField *new_OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeDurationFieldType *type, jlong unitMillis) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldPreciseDurationField *create_OrgJodaTimeFieldPreciseDurationField_initWithOrgJodaTimeDurationFieldType_withLong_(OrgJodaTimeDurationFieldType *type, jlong unitMillis);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldPreciseDurationField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldPreciseDurationField")
