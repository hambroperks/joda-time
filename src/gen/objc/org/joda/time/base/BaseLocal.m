//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/andrefonseca/Documents/PodsFolders/Joda-Time/src/main/java/org/joda/time/base/BaseLocal.java
//

#include "J2ObjC_source.h"
#include "org/joda/time/base/AbstractPartial.h"
#include "org/joda/time/base/BaseLocal.h"

/*!
 @brief Serialization version
 */
inline jlong OrgJodaTimeBaseBaseLocal_get_serialVersionUID();
#define OrgJodaTimeBaseBaseLocal_serialVersionUID 276453175381783LL
J2OBJC_STATIC_FIELD_CONSTANT(OrgJodaTimeBaseBaseLocal, serialVersionUID, jlong)

@implementation OrgJodaTimeBaseBaseLocal

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgJodaTimeBaseBaseLocal_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jlong)getLocalMillis {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x4, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x404, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(getLocalMillis);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "J", .constantValue.asLong = OrgJodaTimeBaseBaseLocal_serialVersionUID, 0x1a, -1, -1, -1, -1 },
  };
  static const J2ObjcClassInfo _OrgJodaTimeBaseBaseLocal = { "BaseLocal", "org.joda.time.base", NULL, methods, fields, 7, 0x401, 2, 1, -1, -1, -1, -1, -1 };
  return &_OrgJodaTimeBaseBaseLocal;
}

@end

void OrgJodaTimeBaseBaseLocal_init(OrgJodaTimeBaseBaseLocal *self) {
  OrgJodaTimeBaseAbstractPartial_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgJodaTimeBaseBaseLocal)
