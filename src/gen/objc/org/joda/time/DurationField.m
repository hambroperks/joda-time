//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/marcussmith/temp/joda-time/src/main/java/org/joda/time/DurationField.java
//

#include "J2ObjC_source.h"
#include "java/lang/ArithmeticException.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "org/joda/time/DurationField.h"
#include "org/joda/time/DurationFieldType.h"

#pragma clang diagnostic ignored "-Wprotocol"

@implementation OrgJodaTimeDurationField

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeDurationField_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgJodaTimeDurationFieldType *)getType {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)getName {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isSupported {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jboolean)isPrecise {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getUnitMillis {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)getValueWithLong:(jlong)duration {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getValueAsLongWithLong:(jlong)duration {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jint)getValueWithLong:(jlong)duration
                withLong:(jlong)instant {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getValueAsLongWithLong:(jlong)duration
                       withLong:(jlong)instant {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getMillisWithInt:(jint)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getMillisWithLong:(jlong)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getMillisWithInt:(jint)value
                 withLong:(jlong)instant {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getMillisWithLong:(jlong)value
                  withLong:(jlong)instant {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)addWithLong:(jlong)instant
             withInt:(jint)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)addWithLong:(jlong)instant
            withLong:(jlong)value {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)subtractWithLong:(jlong)instant
                  withInt:(jint)value {
  if (value == JavaLangInteger_MIN_VALUE) {
    return [self subtractWithLong:instant withLong:(jlong) value];
  }
  return [self addWithLong:instant withInt:-value];
}

- (jlong)subtractWithLong:(jlong)instant
                 withLong:(jlong)value {
  if (value == JavaLangLong_MIN_VALUE) {
    @throw create_JavaLangArithmeticException_initWithNSString_(@"Long.MIN_VALUE cannot be negated");
  }
  return [self addWithLong:instant withLong:-value];
}

- (jint)getDifferenceWithLong:(jlong)minuendInstant
                     withLong:(jlong)subtrahendInstant {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (jlong)getDifferenceAsLongWithLong:(jlong)minuendInstant
                            withLong:(jlong)subtrahendInstant {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (NSString *)description {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgJodaTimeDurationFieldType;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 0, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 2, 1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 0, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 2, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 4, 5, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 4, 1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 4, 6, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 4, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 7, 8, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 7, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 9, 8, -1, -1, -1, -1 },
    { NULL, "J", 0x1, 9, 3, -1, -1, -1, -1 },
    { NULL, "I", 0x401, 10, 3, -1, -1, -1, -1 },
    { NULL, "J", 0x401, 11, 3, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x401, 12, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getType);
  methods[2].selector = @selector(getName);
  methods[3].selector = @selector(isSupported);
  methods[4].selector = @selector(isPrecise);
  methods[5].selector = @selector(getUnitMillis);
  methods[6].selector = @selector(getValueWithLong:);
  methods[7].selector = @selector(getValueAsLongWithLong:);
  methods[8].selector = @selector(getValueWithLong:withLong:);
  methods[9].selector = @selector(getValueAsLongWithLong:withLong:);
  methods[10].selector = @selector(getMillisWithInt:);
  methods[11].selector = @selector(getMillisWithLong:);
  methods[12].selector = @selector(getMillisWithInt:withLong:);
  methods[13].selector = @selector(getMillisWithLong:withLong:);
  methods[14].selector = @selector(addWithLong:withInt:);
  methods[15].selector = @selector(addWithLong:withLong:);
  methods[16].selector = @selector(subtractWithLong:withInt:);
  methods[17].selector = @selector(subtractWithLong:withLong:);
  methods[18].selector = @selector(getDifferenceWithLong:withLong:);
  methods[19].selector = @selector(getDifferenceAsLongWithLong:withLong:);
  methods[20].selector = @selector(description);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "getValue", "J", "getValueAsLong", "JJ", "getMillis", "I", "IJ", "add", "JI", "subtract", "getDifference", "getDifferenceAsLong", "toString", "Ljava/lang/Object;Ljava/lang/Comparable<Lorg/joda/time/DurationField;>;" };
  static const J2ObjcClassInfo _OrgJodaTimeDurationField = { "DurationField", "org.joda.time", ptrTable, methods, NULL, 7, 0x401, 21, 0, -1, -1, -1, 13, -1 };
  return &_OrgJodaTimeDurationField;
}

@end

void OrgJodaTimeDurationField_init(OrgJodaTimeDurationField *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeDurationField)
