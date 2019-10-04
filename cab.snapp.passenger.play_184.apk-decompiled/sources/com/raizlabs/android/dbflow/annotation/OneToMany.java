package com.raizlabs.android.dbflow.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target({ElementType.METHOD})
@Retention(RetentionPolicy.SOURCE)
public @interface OneToMany {

    public enum Method {
        LOAD,
        DELETE,
        SAVE,
        ALL
    }

    boolean efficientMethods() default true;

    @Deprecated
    boolean isVariablePrivate() default false;

    Method[] methods() default {Method.LOAD};

    String variableName() default "";
}
