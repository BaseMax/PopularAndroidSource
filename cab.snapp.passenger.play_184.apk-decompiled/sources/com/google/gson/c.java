package com.google.gson;

import com.google.gson.internal.a;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final Field f4107a;

    public c(Field field) {
        a.checkNotNull(field);
        this.f4107a = field;
    }

    public final Class<?> getDeclaringClass() {
        return this.f4107a.getDeclaringClass();
    }

    public final String getName() {
        return this.f4107a.getName();
    }

    public final Type getDeclaredType() {
        return this.f4107a.getGenericType();
    }

    public final Class<?> getDeclaredClass() {
        return this.f4107a.getType();
    }

    public final <T extends Annotation> T getAnnotation(Class<T> cls) {
        return this.f4107a.getAnnotation(cls);
    }

    public final Collection<Annotation> getAnnotations() {
        return Arrays.asList(this.f4107a.getAnnotations());
    }

    public final boolean hasModifier(int i) {
        return (i & this.f4107a.getModifiers()) != 0;
    }
}
