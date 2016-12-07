//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/Months.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Integer.h"
#include "java/lang/annotation/Annotation.h"
#include "org/joda/convert/FromString.h"
#include "org/joda/convert/ToString.h"
#include "org/joda/time/Chronology.h"
#include "org/joda/time/DateTime.h"
#include "org/joda/time/DateTimeUtils.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"
#include "org/joda/time/LocalDate.h"
#include "org/joda/time/Months.h"
#include "org/joda/time/Period.h"
#include "org/joda/time/PeriodType.h"
#include "org/joda/time/ReadableInstant.h"
#include "org/joda/time/ReadableInterval.h"
#include "org/joda/time/ReadablePartial.h"
#include "org/joda/time/base/BaseSingleFieldPeriod.h"
#include "org/joda/time/field/FieldUtils.h"
#include "org/joda/time/format/ISOPeriodFormat.h"
#include "org/joda/time/format/PeriodFormatter.h"

@interface OrgJodaTimeMonths ()

/*!
 @brief Creates a new instance representing a number of months.
 You should consider using the factory method <code>months(int)</code>
 instead of the constructor.
 @param months  the number of months to represent
 */
- (instancetype)initWithInt:(jint)months;

/*!
 @brief Resolves singletons.
 @return the singleton instance
 */
- (id)readResolve;

@end

/*!
 @brief The parser to use for this class.
 */
inline OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeMonths_get_PARSER();
static OrgJodaTimeFormatPeriodFormatter *OrgJodaTimeMonths_PARSER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(OrgJodaTimeMonths, PARSER, OrgJodaTimeFormatPeriodFormatter *)

/*!
 @brief Serialization version.
 */
inline jlong OrgJodaTimeMonths_get_serialVersionUID();
#define OrgJodaTimeMonths_serialVersionUID 87525275727380867LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeMonths, serialVersionUID, jlong)

__attribute__((unused)) static void OrgJodaTimeMonths_initWithInt_(OrgJodaTimeMonths *self, jint months);

__attribute__((unused)) static OrgJodaTimeMonths *new_OrgJodaTimeMonths_initWithInt_(jint months) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeMonths *create_OrgJodaTimeMonths_initWithInt_(jint months);

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeMonths__Annotations$0();

__attribute__((unused)) static IOSObjectArray *OrgJodaTimeMonths__Annotations$1();

J2OBJC_INITIALIZED_DEFN(OrgJodaTimeMonths)

OrgJodaTimeMonths *OrgJodaTimeMonths_ZERO;
OrgJodaTimeMonths *OrgJodaTimeMonths_ONE;
OrgJodaTimeMonths *OrgJodaTimeMonths_TWO;
OrgJodaTimeMonths *OrgJodaTimeMonths_THREE;
OrgJodaTimeMonths *OrgJodaTimeMonths_FOUR;
OrgJodaTimeMonths *OrgJodaTimeMonths_FIVE;
OrgJodaTimeMonths *OrgJodaTimeMonths_SIX;
OrgJodaTimeMonths *OrgJodaTimeMonths_SEVEN;
OrgJodaTimeMonths *OrgJodaTimeMonths_EIGHT;
OrgJodaTimeMonths *OrgJodaTimeMonths_NINE;
OrgJodaTimeMonths *OrgJodaTimeMonths_TEN;
OrgJodaTimeMonths *OrgJodaTimeMonths_ELEVEN;
OrgJodaTimeMonths *OrgJodaTimeMonths_TWELVE;
OrgJodaTimeMonths *OrgJodaTimeMonths_MAX_VALUE;
OrgJodaTimeMonths *OrgJodaTimeMonths_MIN_VALUE;

@implementation OrgJodaTimeMonths

+ (OrgJodaTimeMonths *)monthsWithInt:(jint)months {
  return OrgJodaTimeMonths_monthsWithInt_(months);
}

+ (OrgJodaTimeMonths *)monthsBetweenWithOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)start
                                    withOrgJodaTimeReadableInstant:(id<OrgJodaTimeReadableInstant>)end {
  return OrgJodaTimeMonths_monthsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(start, end);
}

+ (OrgJodaTimeMonths *)monthsBetweenWithOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)start
                                    withOrgJodaTimeReadablePartial:(id<OrgJodaTimeReadablePartial>)end {
  return OrgJodaTimeMonths_monthsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(start, end);
}

+ (OrgJodaTimeMonths *)monthsInWithOrgJodaTimeReadableInterval:(id<OrgJodaTimeReadableInterval>)interval {
  return OrgJodaTimeMonths_monthsInWithOrgJodaTimeReadableInterval_(interval);
}

+ (OrgJodaTimeMonths *)parseMonthsWithNSString:(NSString *)periodStr {
  return OrgJodaTimeMonths_parseMonthsWithNSString_(periodStr);
}

- (instancetype)initWithInt:(jint)months {
  OrgJodaTimeMonths_initWithInt_(self, months);
  return self;
}

- (id)readResolve {
  return OrgJodaTimeMonths_monthsWithInt_([self getValue]);
}

- (OrgJodaTimeDurationFieldType *)getFieldType {
  return OrgJodaTimeDurationFieldType_months();
}

- (OrgJodaTimePeriodType *)getPeriodType {
  return OrgJodaTimePeriodType_months();
}

- (jint)getMonths {
  return [self getValue];
}

- (OrgJodaTimeMonths *)plusWithInt:(jint)months {
  if (months == 0) {
    return self;
  }
  return OrgJodaTimeMonths_monthsWithInt_(OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_([self getValue], months));
}

- (OrgJodaTimeMonths *)plusWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)months {
  if (months == nil) {
    return self;
  }
  return [self plusWithInt:[months getValue]];
}

- (OrgJodaTimeMonths *)minusWithInt:(jint)months {
  return [self plusWithInt:OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(months)];
}

- (OrgJodaTimeMonths *)minusWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)months {
  if (months == nil) {
    return self;
  }
  return [self minusWithInt:[months getValue]];
}

- (OrgJodaTimeMonths *)multipliedByWithInt:(jint)scalar {
  return OrgJodaTimeMonths_monthsWithInt_(OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_([self getValue], scalar));
}

- (OrgJodaTimeMonths *)dividedByWithInt:(jint)divisor {
  if (divisor == 1) {
    return self;
  }
  return OrgJodaTimeMonths_monthsWithInt_([self getValue] / divisor);
}

- (OrgJodaTimeMonths *)negated {
  return OrgJodaTimeMonths_monthsWithInt_(OrgJodaTimeFieldFieldUtils_safeNegateWithInt_([self getValue]));
}

- (jboolean)isGreaterThanWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)other {
  if (other == nil) {
    return [self getValue] > 0;
  }
  return [self getValue] > [other getValue];
}

- (jboolean)isLessThanWithOrgJodaTimeMonths:(OrgJodaTimeMonths *)other {
  if (other == nil) {
    return [self getValue] < 0;
  }
  return [self getValue] < [other getValue];
}

- (NSString *)description {
  return JreStrcat("C$C", 'P', NSString_valueOfInt_([self getValue]), 'M');
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgJodaTimeMonths;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x9, 5, 6, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x9, 7, 8, -1, -1, 9, -1 },
    { NULL, NULL, 0x2, -1, 1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimePeriodType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x1, 10, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x1, 10, 11, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x1, 12, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x1, 12, 11, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x1, 13, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x1, 14, 1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeMonths;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 15, 11, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, 16, 11, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 17, -1, -1, -1, 18, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(monthsWithInt:);
  methods[1].selector = @selector(monthsBetweenWithOrgJodaTimeReadableInstant:withOrgJodaTimeReadableInstant:);
  methods[2].selector = @selector(monthsBetweenWithOrgJodaTimeReadablePartial:withOrgJodaTimeReadablePartial:);
  methods[3].selector = @selector(monthsInWithOrgJodaTimeReadableInterval:);
  methods[4].selector = @selector(parseMonthsWithNSString:);
  methods[5].selector = @selector(initWithInt:);
  methods[6].selector = @selector(readResolve);
  methods[7].selector = @selector(getFieldType);
  methods[8].selector = @selector(getPeriodType);
  methods[9].selector = @selector(getMonths);
  methods[10].selector = @selector(plusWithInt:);
  methods[11].selector = @selector(plusWithOrgJodaTimeMonths:);
  methods[12].selector = @selector(minusWithInt:);
  methods[13].selector = @selector(minusWithOrgJodaTimeMonths:);
  methods[14].selector = @selector(multipliedByWithInt:);
  methods[15].selector = @selector(dividedByWithInt:);
  methods[16].selector = @selector(negated);
  methods[17].selector = @selector(isGreaterThanWithOrgJodaTimeMonths:);
  methods[18].selector = @selector(isLessThanWithOrgJodaTimeMonths:);
  methods[19].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "ZERO", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 19, -1, -1 },
    { "ONE", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 20, -1, -1 },
    { "TWO", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 21, -1, -1 },
    { "THREE", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 22, -1, -1 },
    { "FOUR", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 23, -1, -1 },
    { "FIVE", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 24, -1, -1 },
    { "SIX", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 25, -1, -1 },
    { "SEVEN", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 26, -1, -1 },
    { "EIGHT", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 27, -1, -1 },
    { "NINE", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 28, -1, -1 },
    { "TEN", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 29, -1, -1 },
    { "ELEVEN", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 30, -1, -1 },
    { "TWELVE", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 31, -1, -1 },
    { "MAX_VALUE", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 32, -1, -1 },
    { "MIN_VALUE", "LOrgJodaTimeMonths;", .constantValue.asLong = 0, 0x19, -1, 33, -1, -1 },
    { "PARSER", "LOrgJodaTimeFormatPeriodFormatter;", .constantValue.asLong = 0, 0x1a, -1, 34, -1, -1 },
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeMonths_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "months", "I", "monthsBetween", "LOrgJodaTimeReadableInstant;LOrgJodaTimeReadableInstant;", "LOrgJodaTimeReadablePartial;LOrgJodaTimeReadablePartial;", "monthsIn", "LOrgJodaTimeReadableInterval;", "parseMonths", "LNSString;", (void *)&OrgJodaTimeMonths__Annotations$0, "plus", "LOrgJodaTimeMonths;", "minus", "multipliedBy", "dividedBy", "isGreaterThan", "isLessThan", "toString", (void *)&OrgJodaTimeMonths__Annotations$1, &OrgJodaTimeMonths_ZERO, &OrgJodaTimeMonths_ONE, &OrgJodaTimeMonths_TWO, &OrgJodaTimeMonths_THREE, &OrgJodaTimeMonths_FOUR, &OrgJodaTimeMonths_FIVE, &OrgJodaTimeMonths_SIX, &OrgJodaTimeMonths_SEVEN, &OrgJodaTimeMonths_EIGHT, &OrgJodaTimeMonths_NINE, &OrgJodaTimeMonths_TEN, &OrgJodaTimeMonths_ELEVEN, &OrgJodaTimeMonths_TWELVE, &OrgJodaTimeMonths_MAX_VALUE, &OrgJodaTimeMonths_MIN_VALUE, &OrgJodaTimeMonths_PARSER };
  static const J2ObjcClassInfo _OrgJodaTimeMonths = { "Months", "org.joda.time", ptrTable, methods, fields, 7, 0x11, 20, 17, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeMonths;
}

+ (void)initialize {
  if (self == [OrgJodaTimeMonths class]) {
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_ZERO, new_OrgJodaTimeMonths_initWithInt_(0));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_ONE, new_OrgJodaTimeMonths_initWithInt_(1));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_TWO, new_OrgJodaTimeMonths_initWithInt_(2));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_THREE, new_OrgJodaTimeMonths_initWithInt_(3));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_FOUR, new_OrgJodaTimeMonths_initWithInt_(4));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_FIVE, new_OrgJodaTimeMonths_initWithInt_(5));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_SIX, new_OrgJodaTimeMonths_initWithInt_(6));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_SEVEN, new_OrgJodaTimeMonths_initWithInt_(7));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_EIGHT, new_OrgJodaTimeMonths_initWithInt_(8));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_NINE, new_OrgJodaTimeMonths_initWithInt_(9));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_TEN, new_OrgJodaTimeMonths_initWithInt_(10));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_ELEVEN, new_OrgJodaTimeMonths_initWithInt_(11));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_TWELVE, new_OrgJodaTimeMonths_initWithInt_(12));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_MAX_VALUE, new_OrgJodaTimeMonths_initWithInt_(JavaLangInteger_MAX_VALUE));
    JreStrongAssignAndConsume(&OrgJodaTimeMonths_MIN_VALUE, new_OrgJodaTimeMonths_initWithInt_(JavaLangInteger_MIN_VALUE));
    JreStrongAssign(&OrgJodaTimeMonths_PARSER, [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeFormatISOPeriodFormat_standard())) withParseTypeWithOrgJodaTimePeriodType:OrgJodaTimePeriodType_months()]);
    J2OBJC_SET_INITIALIZED(OrgJodaTimeMonths)
  }
}

@end

OrgJodaTimeMonths *OrgJodaTimeMonths_monthsWithInt_(jint months) {
  OrgJodaTimeMonths_initialize();
  switch (months) {
    case 0:
    return OrgJodaTimeMonths_ZERO;
    case 1:
    return OrgJodaTimeMonths_ONE;
    case 2:
    return OrgJodaTimeMonths_TWO;
    case 3:
    return OrgJodaTimeMonths_THREE;
    case 4:
    return OrgJodaTimeMonths_FOUR;
    case 5:
    return OrgJodaTimeMonths_FIVE;
    case 6:
    return OrgJodaTimeMonths_SIX;
    case 7:
    return OrgJodaTimeMonths_SEVEN;
    case 8:
    return OrgJodaTimeMonths_EIGHT;
    case 9:
    return OrgJodaTimeMonths_NINE;
    case 10:
    return OrgJodaTimeMonths_TEN;
    case 11:
    return OrgJodaTimeMonths_ELEVEN;
    case 12:
    return OrgJodaTimeMonths_TWELVE;
    case JavaLangInteger_MAX_VALUE:
    return OrgJodaTimeMonths_MAX_VALUE;
    case JavaLangInteger_MIN_VALUE:
    return OrgJodaTimeMonths_MIN_VALUE;
    default:
    return create_OrgJodaTimeMonths_initWithInt_(months);
  }
}

OrgJodaTimeMonths *OrgJodaTimeMonths_monthsBetweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_(id<OrgJodaTimeReadableInstant> start, id<OrgJodaTimeReadableInstant> end) {
  OrgJodaTimeMonths_initialize();
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_(start, end, OrgJodaTimeDurationFieldType_months());
  return OrgJodaTimeMonths_monthsWithInt_(amount);
}

OrgJodaTimeMonths *OrgJodaTimeMonths_monthsBetweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_(id<OrgJodaTimeReadablePartial> start, id<OrgJodaTimeReadablePartial> end) {
  OrgJodaTimeMonths_initialize();
  if ([start isKindOfClass:[OrgJodaTimeLocalDate class]] && [end isKindOfClass:[OrgJodaTimeLocalDate class]]) {
    OrgJodaTimeChronology *chrono = OrgJodaTimeDateTimeUtils_getChronologyWithOrgJodaTimeChronology_([((id<OrgJodaTimeReadablePartial>) nil_chk(start)) getChronology]);
    jint months = [((OrgJodaTimeDurationField *) nil_chk([((OrgJodaTimeChronology *) nil_chk(chrono)) months])) getDifferenceWithLong:[((OrgJodaTimeLocalDate *) nil_chk(((OrgJodaTimeLocalDate *) cast_chk(end, [OrgJodaTimeLocalDate class])))) getLocalMillis] withLong:[((OrgJodaTimeLocalDate *) cast_chk(start, [OrgJodaTimeLocalDate class])) getLocalMillis]];
    return OrgJodaTimeMonths_monthsWithInt_(months);
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePartial_withOrgJodaTimeReadablePeriod_(start, end, OrgJodaTimeMonths_ZERO);
  return OrgJodaTimeMonths_monthsWithInt_(amount);
}

OrgJodaTimeMonths *OrgJodaTimeMonths_monthsInWithOrgJodaTimeReadableInterval_(id<OrgJodaTimeReadableInterval> interval) {
  OrgJodaTimeMonths_initialize();
  if (interval == nil) {
    return OrgJodaTimeMonths_ZERO;
  }
  jint amount = OrgJodaTimeBaseBaseSingleFieldPeriod_betweenWithOrgJodaTimeReadableInstant_withOrgJodaTimeReadableInstant_withOrgJodaTimeDurationFieldType_([interval getStart], [interval getEnd], OrgJodaTimeDurationFieldType_months());
  return OrgJodaTimeMonths_monthsWithInt_(amount);
}

OrgJodaTimeMonths *OrgJodaTimeMonths_parseMonthsWithNSString_(NSString *periodStr) {
  OrgJodaTimeMonths_initialize();
  if (periodStr == nil) {
    return OrgJodaTimeMonths_ZERO;
  }
  OrgJodaTimePeriod *p = [((OrgJodaTimeFormatPeriodFormatter *) nil_chk(OrgJodaTimeMonths_PARSER)) parsePeriodWithNSString:periodStr];
  return OrgJodaTimeMonths_monthsWithInt_([((OrgJodaTimePeriod *) nil_chk(p)) getMonths]);
}

void OrgJodaTimeMonths_initWithInt_(OrgJodaTimeMonths *self, jint months) {
  OrgJodaTimeBaseBaseSingleFieldPeriod_initWithInt_(self, months);
}

OrgJodaTimeMonths *new_OrgJodaTimeMonths_initWithInt_(jint months) {
  J2OBJC_NEW_IMPL(OrgJodaTimeMonths, initWithInt_, months)
}

OrgJodaTimeMonths *create_OrgJodaTimeMonths_initWithInt_(jint months) {
  J2OBJC_CREATE_IMPL(OrgJodaTimeMonths, initWithInt_, months)
}

IOSObjectArray *OrgJodaTimeMonths__Annotations$0() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertFromString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgJodaTimeMonths__Annotations$1() {
  return [IOSObjectArray arrayWithObjects:(id[]){ create_OrgJodaConvertToString() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeMonths)
