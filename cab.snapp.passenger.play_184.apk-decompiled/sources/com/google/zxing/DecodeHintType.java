package com.google.zxing;

import java.util.List;

public enum DecodeHintType {
    OTHER(Object.class),
    PURE_BARCODE(Void.class),
    POSSIBLE_FORMATS(List.class),
    TRY_HARDER(Void.class),
    CHARACTER_SET(String.class),
    ALLOWED_LENGTHS(r0),
    ASSUME_CODE_39_CHECK_DIGIT(Void.class),
    ASSUME_GS1(Void.class),
    RETURN_CODABAR_START_END(Void.class),
    NEED_RESULT_POINT_CALLBACK(n.class),
    ALLOWED_EAN_EXTENSIONS(r0);
    

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f4225a;

    private DecodeHintType(Class<?> cls) {
        this.f4225a = cls;
    }

    public final Class<?> getValueType() {
        return this.f4225a;
    }
}
