//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/jenkins/laundrapp/SDKs/joda-time/src/main/java/org/joda/time/field/DecoratedDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldDecoratedDateTimeField")
#ifdef RESTRICT_OrgJodaTimeFieldDecoratedDateTimeField
#define INCLUDE_ALL_OrgJodaTimeFieldDecoratedDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldDecoratedDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeFieldDecoratedDateTimeField

#if !defined (OrgJodaTimeFieldDecoratedDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeFieldDecoratedDateTimeField || defined(INCLUDE_OrgJodaTimeFieldDecoratedDateTimeField))
#define OrgJodaTimeFieldDecoratedDateTimeField_

#define RESTRICT_OrgJodaTimeFieldBaseDateTimeField 1
#define INCLUDE_OrgJodaTimeFieldBaseDateTimeField 1
#include "org/joda/time/field/BaseDateTimeField.h"

@class OrgJodaTimeDateTimeField;
@class OrgJodaTimeDateTimeFieldType;
@class OrgJodaTimeDurationField;

@interface OrgJodaTimeFieldDecoratedDateTimeField : OrgJodaTimeFieldBaseDateTimeField

#pragma mark Public

- (jint)getWithLong:(jlong)instant;

- (OrgJodaTimeDurationField *)getDurationField;

- (jint)getMaximumValue;

- (jint)getMinimumValue;

- (OrgJodaTimeDurationField *)getRangeDurationField;

- (OrgJodaTimeDateTimeField *)getWrappedField;

- (jboolean)isLenient;

- (jlong)roundFloorWithLong:(jlong)instant;

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value;

#pragma mark Protected

- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldDecoratedDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeFieldDecoratedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldDecoratedDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldDecoratedDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldDecoratedDateTimeField")
