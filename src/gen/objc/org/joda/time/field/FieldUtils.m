//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/field/FieldUtils.java
//

#include "J2ObjC_source.h"
#include "java/lang/ArithmeticException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "org/joda/time/DateTimeField.h"
#include "org/joda/time/DateTimeFieldType.h"
#include "org/joda/time/IllegalFieldValueException.h"
#include "org/joda/time/field/FieldUtils.h"

@interface OrgJodaTimeFieldFieldUtils ()

/*!
 @brief Restricted constructor.
 */
- (instancetype)init;

@end

__attribute__((unused)) static void OrgJodaTimeFieldFieldUtils_init(OrgJodaTimeFieldFieldUtils *self);

__attribute__((unused)) static OrgJodaTimeFieldFieldUtils *new_OrgJodaTimeFieldFieldUtils_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgJodaTimeFieldFieldUtils *create_OrgJodaTimeFieldFieldUtils_init(void);

@implementation OrgJodaTimeFieldFieldUtils

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeFieldFieldUtils_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (jint)safeNegateWithInt:(jint)value {
  return OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(value);
}

+ (jint)safeAddWithInt:(jint)val1
               withInt:(jint)val2 {
  return OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_(val1, val2);
}

+ (jlong)safeAddWithLong:(jlong)val1
                withLong:(jlong)val2 {
  return OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(val1, val2);
}

+ (jlong)safeSubtractWithLong:(jlong)val1
                     withLong:(jlong)val2 {
  return OrgJodaTimeFieldFieldUtils_safeSubtractWithLong_withLong_(val1, val2);
}

+ (jint)safeMultiplyWithInt:(jint)val1
                    withInt:(jint)val2 {
  return OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_(val1, val2);
}

+ (jlong)safeMultiplyWithLong:(jlong)val1
                      withInt:(jint)val2 {
  return OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_(val1, val2);
}

+ (jlong)safeMultiplyWithLong:(jlong)val1
                     withLong:(jlong)val2 {
  return OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withLong_(val1, val2);
}

+ (jlong)safeDivideWithLong:(jlong)dividend
                   withLong:(jlong)divisor {
  return OrgJodaTimeFieldFieldUtils_safeDivideWithLong_withLong_(dividend, divisor);
}

+ (jint)safeToIntWithLong:(jlong)value {
  return OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(value);
}

+ (jint)safeMultiplyToIntWithLong:(jlong)val1
                         withLong:(jlong)val2 {
  return OrgJodaTimeFieldFieldUtils_safeMultiplyToIntWithLong_withLong_(val1, val2);
}

+ (void)verifyValueBoundsWithOrgJodaTimeDateTimeField:(OrgJodaTimeDateTimeField *)field
                                              withInt:(jint)value
                                              withInt:(jint)lowerBound
                                              withInt:(jint)upperBound {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(field, value, lowerBound, upperBound);
}

+ (void)verifyValueBoundsWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)fieldType
                                                  withInt:(jint)value
                                                  withInt:(jint)lowerBound
                                                  withInt:(jint)upperBound {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(fieldType, value, lowerBound, upperBound);
}

+ (void)verifyValueBoundsWithNSString:(NSString *)fieldName
                              withInt:(jint)value
                              withInt:(jint)lowerBound
                              withInt:(jint)upperBound {
  OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithNSString_withInt_withInt_withInt_(fieldName, value, lowerBound, upperBound);
}

+ (jint)getWrappedValueWithInt:(jint)currentValue
                       withInt:(jint)wrapValue
                       withInt:(jint)minValue
                       withInt:(jint)maxValue {
  return OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_withInt_(currentValue, wrapValue, minValue, maxValue);
}

+ (jint)getWrappedValueWithInt:(jint)value
                       withInt:(jint)minValue
                       withInt:(jint)maxValue {
  return OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_(value, minValue, maxValue);
}

+ (jboolean)equalsWithId:(id)object1
                  withId:(id)object2 {
  return OrgJodaTimeFieldFieldUtils_equalsWithId_withId_(object1, object2);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 2, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 2, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 5, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 6, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 6, 7, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 6, 4, -1, -1, -1, -1 },
    { NULL, "J", 0x9, 8, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 9, 10, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 11, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 12, 13, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 12, 14, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 12, 15, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 16, 17, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 16, 18, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 19, 20, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(safeNegateWithInt:);
  methods[2].selector = @selector(safeAddWithInt:withInt:);
  methods[3].selector = @selector(safeAddWithLong:withLong:);
  methods[4].selector = @selector(safeSubtractWithLong:withLong:);
  methods[5].selector = @selector(safeMultiplyWithInt:withInt:);
  methods[6].selector = @selector(safeMultiplyWithLong:withInt:);
  methods[7].selector = @selector(safeMultiplyWithLong:withLong:);
  methods[8].selector = @selector(safeDivideWithLong:withLong:);
  methods[9].selector = @selector(safeToIntWithLong:);
  methods[10].selector = @selector(safeMultiplyToIntWithLong:withLong:);
  methods[11].selector = @selector(verifyValueBoundsWithOrgJodaTimeDateTimeField:withInt:withInt:withInt:);
  methods[12].selector = @selector(verifyValueBoundsWithOrgJodaTimeDateTimeFieldType:withInt:withInt:withInt:);
  methods[13].selector = @selector(verifyValueBoundsWithNSString:withInt:withInt:withInt:);
  methods[14].selector = @selector(getWrappedValueWithInt:withInt:withInt:withInt:);
  methods[15].selector = @selector(getWrappedValueWithInt:withInt:withInt:);
  methods[16].selector = @selector(equalsWithId:withId:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "safeNegate", "I", "safeAdd", "II", "JJ", "safeSubtract", "safeMultiply", "JI", "safeDivide", "safeToInt", "J", "safeMultiplyToInt", "verifyValueBounds", "LOrgJodaTimeDateTimeField;III", "LOrgJodaTimeDateTimeFieldType;III", "LNSString;III", "getWrappedValue", "IIII", "III", "equals", "LNSObject;LNSObject;" };
  static const J2ObjcClassInfo _OrgJodaTimeFieldFieldUtils = { "FieldUtils", "org.joda.time.field", ptrTable, methods, NULL, 7, 0x1, 17, 0, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeFieldFieldUtils;
}

@end

void OrgJodaTimeFieldFieldUtils_init(OrgJodaTimeFieldFieldUtils *self) {
  NSObject_init(self);
}

OrgJodaTimeFieldFieldUtils *new_OrgJodaTimeFieldFieldUtils_init() {
  J2OBJC_NEW_IMPL(OrgJodaTimeFieldFieldUtils, init)
}

OrgJodaTimeFieldFieldUtils *create_OrgJodaTimeFieldFieldUtils_init() {
  J2OBJC_CREATE_IMPL(OrgJodaTimeFieldFieldUtils, init)
}

jint OrgJodaTimeFieldFieldUtils_safeNegateWithInt_(jint value) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if (value == JavaLangInteger_MIN_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"Integer.MIN_VALUE cannot be negated");
  }
  return -value;
}

jint OrgJodaTimeFieldFieldUtils_safeAddWithInt_withInt_(jint val1, jint val2) {
  OrgJodaTimeFieldFieldUtils_initialize();
  jint sum = val1 + val2;
  if ((val1 ^ sum) < 0 && (val1 ^ val2) >= 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$I$I", @"The calculation caused an overflow: ", val1, @" + ", val2));
  }
  return sum;
}

jlong OrgJodaTimeFieldFieldUtils_safeAddWithLong_withLong_(jlong val1, jlong val2) {
  OrgJodaTimeFieldFieldUtils_initialize();
  jlong sum = val1 + val2;
  if ((val1 ^ sum) < 0 && (val1 ^ val2) >= 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$J$J", @"The calculation caused an overflow: ", val1, @" + ", val2));
  }
  return sum;
}

jlong OrgJodaTimeFieldFieldUtils_safeSubtractWithLong_withLong_(jlong val1, jlong val2) {
  OrgJodaTimeFieldFieldUtils_initialize();
  jlong diff = val1 - val2;
  if ((val1 ^ diff) < 0 && (val1 ^ val2) < 0) {
    @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$J$J", @"The calculation caused an overflow: ", val1, @" - ", val2));
  }
  return diff;
}

jint OrgJodaTimeFieldFieldUtils_safeMultiplyWithInt_withInt_(jint val1, jint val2) {
  OrgJodaTimeFieldFieldUtils_initialize();
  jlong total = (jlong) val1 * (jlong) val2;
  if (total < JavaLangInteger_MIN_VALUE || total > JavaLangInteger_MAX_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$I$I", @"Multiplication overflows an int: ", val1, @" * ", val2));
  }
  return (jint) total;
}

jlong OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withInt_(jlong val1, jint val2) {
  OrgJodaTimeFieldFieldUtils_initialize();
  switch (val2) {
    case -1:
    if (val1 == JavaLangLong_MIN_VALUE) {
      @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$J$I", @"Multiplication overflows a long: ", val1, @" * ", val2));
    }
    return -val1;
    case 0:
    return 0LL;
    case 1:
    return val1;
  }
  jlong total = val1 * val2;
  if (total / val2 != val1) {
    @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$J$I", @"Multiplication overflows a long: ", val1, @" * ", val2));
  }
  return total;
}

jlong OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withLong_(jlong val1, jlong val2) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if (val2 == 1) {
    return val1;
  }
  if (val1 == 1) {
    return val2;
  }
  if (val1 == 0 || val2 == 0) {
    return 0;
  }
  jlong total = val1 * val2;
  if (total / val2 != val1 || (val1 == JavaLangLong_MIN_VALUE && val2 == -1) || (val2 == JavaLangLong_MIN_VALUE && val1 == -1)) {
    @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$J$J", @"Multiplication overflows a long: ", val1, @" * ", val2));
  }
  return total;
}

jlong OrgJodaTimeFieldFieldUtils_safeDivideWithLong_withLong_(jlong dividend, jlong divisor) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if (dividend == JavaLangLong_MIN_VALUE && divisor == -1LL) {
    @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$J$J", @"Multiplication overflows a long: ", dividend, @" / ", divisor));
  }
  return dividend / divisor;
}

jint OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(jlong value) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if (JavaLangInteger_MIN_VALUE <= value && value <= JavaLangInteger_MAX_VALUE) {
    return (jint) value;
  }
  @throw create_JavaLangArithmeticException_initWithNSString_(JreStrcat("$J", @"Value cannot fit in an int: ", value));
}

jint OrgJodaTimeFieldFieldUtils_safeMultiplyToIntWithLong_withLong_(jlong val1, jlong val2) {
  OrgJodaTimeFieldFieldUtils_initialize();
  jlong val = OrgJodaTimeFieldFieldUtils_safeMultiplyWithLong_withLong_(val1, val2);
  return OrgJodaTimeFieldFieldUtils_safeToIntWithLong_(val);
}

void OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeField_withInt_withInt_withInt_(OrgJodaTimeDateTimeField *field, jint value, jint lowerBound, jint upperBound) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if ((value < lowerBound) || (value > upperBound)) {
    @throw create_OrgJodaTimeIllegalFieldValueException_initWithOrgJodaTimeDateTimeFieldType_withNSNumber_withNSNumber_withNSNumber_([((OrgJodaTimeDateTimeField *) nil_chk(field)) getType], JavaLangInteger_valueOfWithInt_(value), JavaLangInteger_valueOfWithInt_(lowerBound), JavaLangInteger_valueOfWithInt_(upperBound));
  }
}

void OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithOrgJodaTimeDateTimeFieldType_withInt_withInt_withInt_(OrgJodaTimeDateTimeFieldType *fieldType, jint value, jint lowerBound, jint upperBound) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if ((value < lowerBound) || (value > upperBound)) {
    @throw create_OrgJodaTimeIllegalFieldValueException_initWithOrgJodaTimeDateTimeFieldType_withNSNumber_withNSNumber_withNSNumber_(fieldType, JavaLangInteger_valueOfWithInt_(value), JavaLangInteger_valueOfWithInt_(lowerBound), JavaLangInteger_valueOfWithInt_(upperBound));
  }
}

void OrgJodaTimeFieldFieldUtils_verifyValueBoundsWithNSString_withInt_withInt_withInt_(NSString *fieldName, jint value, jint lowerBound, jint upperBound) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if ((value < lowerBound) || (value > upperBound)) {
    @throw create_OrgJodaTimeIllegalFieldValueException_initWithNSString_withNSNumber_withNSNumber_withNSNumber_(fieldName, JavaLangInteger_valueOfWithInt_(value), JavaLangInteger_valueOfWithInt_(lowerBound), JavaLangInteger_valueOfWithInt_(upperBound));
  }
}

jint OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_withInt_(jint currentValue, jint wrapValue, jint minValue, jint maxValue) {
  OrgJodaTimeFieldFieldUtils_initialize();
  return OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_(currentValue + wrapValue, minValue, maxValue);
}

jint OrgJodaTimeFieldFieldUtils_getWrappedValueWithInt_withInt_withInt_(jint value, jint minValue, jint maxValue) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if (minValue >= maxValue) {
    @throw create_JavaLangIllegalArgumentException_initWithNSString_(@"MIN > MAX");
  }
  jint wrapRange = maxValue - minValue + 1;
  value -= minValue;
  if (value >= 0) {
    return (value % wrapRange) + minValue;
  }
  jint remByRange = (-value) % wrapRange;
  if (remByRange == 0) {
    return 0 + minValue;
  }
  return (wrapRange - remByRange) + minValue;
}

jboolean OrgJodaTimeFieldFieldUtils_equalsWithId_withId_(id object1, id object2) {
  OrgJodaTimeFieldFieldUtils_initialize();
  if (object1 == object2) {
    return true;
  }
  if (object1 == nil || object2 == nil) {
    return false;
  }
  return [object1 isEqual:object2];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeFieldFieldUtils)
