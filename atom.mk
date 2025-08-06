LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libevent
LOCAL_DESCRIPTION := Event notification library
LOCAL_EXPORT_LDLIBS = -l:libevent.a -l:libevent_mbedtls.a

LOCAL_LIBRARIES := mbedtls
LOCAL_AUTOTOOLS_CONFIGURE_ARGS := \
    --enable-debug-mode \
    --disable-samples \
    --disable-libevent-regress \
    --disable-openssl \
    --enable-mbedtls \
    --disable-thread-support \
    --disable-clock-gettime \
    --disable-dependency-tracking \
    --disable-shared \
    --enable-static

include $(BUILD_AUTOTOOLS)

