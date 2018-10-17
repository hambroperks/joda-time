//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/Salton/Documents/Projects/joda-time/src/main/java/org/joda/time/field/SkipUndoDateTimeField.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgJodaTimeFieldSkipUndoDateTimeField")
#ifdef RESTRICT_OrgJodaTimeFieldSkipUndoDateTimeField
#define INCLUDE_ALL_OrgJodaTimeFieldSkipUndoDateTimeField 0
#else
#define INCLUDE_ALL_OrgJodaTimeFieldSkipUndoDateTimeField 1
#endif
#undef RESTRICT_OrgJodaTimeFieldSkipUndoDateTimeField

#if !defined (OrgJodaTimeFieldSkipUndoDateTimeField_) && (INCLUDE_ALL_OrgJodaTimeFieldSkipUndoDateTimeField || defined(INCLUDE_OrgJodaTimeFieldSkipUndoDateTimeField))
#define OrgJodaTimeFieldSkipUndoDateTimeField_

#define RESTRICT_OrgJodaTimeFieldDelegatedDateTimeField 1
#define INCLUDE_OrgJodaTimeFieldDelegatedDateTimeField 1
#include "org/joda/time/field/DelegatedDateTimeField.h"

@class OrgJodaTimeChronology;
@class OrgJodaTimeDateTimeField;

/*!
 @brief Wraps another field such that a certain value is added back into
 the sequence of numbers.
 <p>
 This reverses the effect of SkipDateTimeField. This isn't very
 elegant.
 <p>
 SkipUndoDateTimeField is thread-safe and immutable.
 @author Brian S O'Neill
 @author Stephen Colebourne
 @since 1.0
 */
@interface OrgJodaTimeFieldSkipUndoDateTimeField : OrgJodaTimeFieldDelegatedDateTimeField

#pragma mark Public

/*!
 @brief Constructor that reinserts zero.
 @param chronology  the chronology to use
 @param field  the field to skip zero on
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology
                 withOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field;

/*!
 @brief Constructor.
 @param chronology  the chronology to use
 @param field  the field to skip zero on
 @param skip  the value to skip
 */
- (instancetype)initWithOrgJodaTimeChronology:(OrgJodaTimeChronology *)chronology
                 withOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                      withInt:(jint)skip;

- (jint)getWithLong:(jlong)millis;

- (jint)getMinimumValue;

- (jlong)setWithLong:(jlong)millis
             withInt:(jint)value;

@end

J2OBJC_STATIC_INIT(OrgJodaTimeFieldSkipUndoDateTimeField)

FOUNDATION_EXPORT void OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(OrgJodaTimeFieldSkipUndoDateTimeField *self, OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field);

FOUNDATION_EXPORT OrgJodaTimeFieldSkipUndoDateTimeField *new_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldSkipUndoDateTimeField *create_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_(OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field);

FOUNDATION_EXPORT void OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeFieldSkipUndoDateTimeField *self, OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field, jint skip);

FOUNDATION_EXPORT OrgJodaTimeFieldSkipUndoDateTimeField *new_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field, jint skip) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgJodaTimeFieldSkipUndoDateTimeField *create_OrgJodaTimeFieldSkipUndoDateTimeField_initWithOrgJodaTimeChronology_withOrgJodaTimeDateTimeField_withInt_(OrgJodaTimeChronology *chronology, OrgJodaTimeDateTimeField *field, jint skip);

J2OBJC_TYPE_LITERAL_HEADER(OrgJodaTimeFieldSkipUndoDateTimeField)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgJodaTimeFieldSkipUndoDateTimeField")
