//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrewebling/Laundrapp/Joda-time-Project/joda-time/src/main/java/org/joda/time/field/PreciseDurationDateTimeField.java
//

#include "BaseDateTimeField.h"
#include "DateTimeFieldType.h"
#include "DurationField.h"
#include "FieldUtils.h"
#include "PreciseDurationDateTimeField.h"
#include "java/lang/IllegalArgumentException.h"

@implementation OrgJodaTimeFieldPreciseDurationDateTimeField

- (instancetype)initWithOrgJodaTimeDateTimeFieldType:(OrgJodaTimeDateTimeFieldType *)type
                        withOrgJodaTimeDurationField:(OrgJodaTimeDurationField *)unit {
  if (self = [super initWithOrgJodaTimeDateTimeFieldType:type]) {
    if (![((OrgJodaTimeDurationField *) nil_chk(unit)) isPrecise]) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"Unit duration field must be precise"];
    }
    iUnitMillis_ = [unit getUnitMillis];
    if (iUnitMillis_ < 1) {
      @throw [[JavaLangIllegalArgumentException alloc] initWithNSString:@"The unit milliseconds must be at least 1"];
    }
    iUnitField_ = unit;
  }
  return self;
}

- (BOOL)isLenient {
  return NO;
}

- (long long int)setWithLong:(long long int)instant
                     withInt:(int)value {
  [OrgJodaTimeFieldFieldUtils verifyValueBoundsWithOrgJodaTimeDateTimeField:self withInt:value withInt:[self getMinimumValue] withInt:[self getMaximumValueForSetWithLong:instant withInt:value]];
  return instant + (value - [self getWithLong:instant]) * iUnitMillis_;
}

- (long long int)roundFloorWithLong:(long long int)instant {
  if (instant >= 0) {
    return instant - instant % iUnitMillis_;
  }
  else {
    instant += 1;
    return instant - instant % iUnitMillis_ - iUnitMillis_;
  }
}

- (long long int)roundCeilingWithLong:(long long int)instant {
  if (instant > 0) {
    instant -= 1;
    return instant - instant % iUnitMillis_ + iUnitMillis_;
  }
  else {
    return instant - instant % iUnitMillis_;
  }
}

- (long long int)remainderWithLong:(long long int)instant {
  if (instant >= 0) {
    return instant % iUnitMillis_;
  }
  else {
    return (instant + 1) % iUnitMillis_ + iUnitMillis_ - 1;
  }
}

- (OrgJodaTimeDurationField *)getDurationField {
  return iUnitField_;
}

- (int)getMinimumValue {
  return 0;
}

- (long long int)getUnitMillis {
  return iUnitMillis_;
}

- (int)getMaximumValueForSetWithLong:(long long int)instant
                             withInt:(int)value {
  return [self getMaximumValueWithLong:instant];
}

- (void)copyAllFieldsTo:(OrgJodaTimeFieldPreciseDurationDateTimeField *)other {
  [super copyAllFieldsTo:other];
  other->iUnitField_ = iUnitField_;
  other->iUnitMillis_ = iUnitMillis_;
}

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "initWithOrgJodaTimeDateTimeFieldType:withOrgJodaTimeDurationField:", "PreciseDurationDateTimeField", NULL, 0x1, NULL },
    { "isLenient", NULL, "Z", 0x1, NULL },
    { "setWithLong:withInt:", "set", "J", 0x1, NULL },
    { "roundFloorWithLong:", "roundFloor", "J", 0x1, NULL },
    { "roundCeilingWithLong:", "roundCeiling", "J", 0x1, NULL },
    { "remainderWithLong:", "remainder", "J", 0x1, NULL },
    { "getDurationField", NULL, "Lorg.joda.time.DurationField;", 0x1, NULL },
    { "getMinimumValue", NULL, "I", 0x1, NULL },
    { "getUnitMillis", NULL, "J", 0x11, NULL },
    { "getMaximumValueForSetWithLong:withInt:", "getMaximumValueForSet", "I", 0x4, NULL },
  };
  static J2ObjcFieldInfo fields[] = {
    { "serialVersionUID_", NULL, 0x1a, "J", NULL, .constantValue.asLong = OrgJodaTimeFieldPreciseDurationDateTimeField_serialVersionUID },
    { "iUnitMillis_", NULL, 0x10, "J", NULL,  },
    { "iUnitField_", NULL, 0x12, "Lorg.joda.time.DurationField;", NULL,  },
  };
  static J2ObjcClassInfo _OrgJodaTimeFieldPreciseDurationDateTimeField = { "PreciseDurationDateTimeField", "org.joda.time.field", NULL, 0x401, 10, methods, 3, fields, 0, NULL};
  return &_OrgJodaTimeFieldPreciseDurationDateTimeField;
}

@end
