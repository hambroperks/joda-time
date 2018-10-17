//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/field/DecoratedDateTimeField.java
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

/*!
 @brief <code>DecoratedDateTimeField</code> extends <code>BaseDateTimeField</code>,
 implementing only the minimum required set of methods.
 These implemented
 methods delegate to a wrapped field.
 <p>
 This design allows new DateTimeField types to be defined that piggyback on
 top of another, inheriting all the safe method implementations from
 BaseDateTimeField. Should any method require pure delegation to the
 wrapped field, simply override and use the provided getWrappedField method.
 <p>
 DecoratedDateTimeField is thread-safe and immutable, and its subclasses must
 be as well.
 @author Brian S O'Neill
 @since 1.0
 - seealso: DelegatedDateTimeField
 */
@interface OrgJodaTimeFieldDecoratedDateTimeField : OrgJodaTimeFieldBaseDateTimeField

#pragma mark Public

- (jint)getWithLong:(jlong)instant;

- (OrgJodaTimeDurationField *)getDurationField;

- (jint)getMaximumValue;

- (jint)getMinimumValue;

- (OrgJodaTimeDurationField *)getRangeDurationField;

/*!
 @brief Gets the wrapped date time field.
 @return the wrapped DateTimeField
 */
- (OrgJodaTimeDateTimeField *)getWrappedField;

- (jboolean)isLenient;

- (jlong)roundFloorWithLong:(jlong)instant;

- (jlong)setWithLong:(jlong)instant
             withInt:(jint)value;

#pragma mark Protected

/*!
 @brief Constructor.
 @param field  the field being decorated
 @param type  allow type to be overridden
 */
- (instancetype)initWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                withOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgJodaTimeFieldDecoratedDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeFieldDecoratedDateTimeField_initWithOrgJodaTimeDateTimeField_withOrgJodaTimeDateTimeFieldType_(OrgJodaTimeFieldDecoratedDateTimeField *self, OrgJodaTimeDateTimeField *field, OrgJodaTimeDateTimeFieldType *type);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldDecoratedDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldDecoratedDateTimeField")
