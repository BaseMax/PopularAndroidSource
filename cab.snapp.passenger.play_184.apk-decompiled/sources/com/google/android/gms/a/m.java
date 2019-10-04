package com.google.android.gms.a;

import android.os.IBinder;
import com.google.android.gms.a.a;
import java.lang.reflect.Field;

public final class m<T> extends a.C0060a {

    /* renamed from: a  reason: collision with root package name */
    private final T f2557a;

    private m(T t) {
        this.f2557a = t;
    }

    public static <T> T zzx(a aVar) {
        if (aVar instanceof m) {
            return ((m) aVar).f2557a;
        }
        IBinder asBinder = aVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i++;
                field = field2;
            }
        }
        if (i != 1) {
            int length = declaredFields.length;
            StringBuilder sb = new StringBuilder(64);
            sb.append("Unexpected number of IObjectWrapper declared fields: ");
            sb.append(length);
            throw new IllegalArgumentException(sb.toString());
        } else if (!field.isAccessible()) {
            field.setAccessible(true);
            try {
                return field.get(asBinder);
            } catch (NullPointerException e) {
                throw new IllegalArgumentException("Binder object is null.", e);
            } catch (IllegalAccessException e2) {
                throw new IllegalArgumentException("Could not access the field in remoteBinder.", e2);
            }
        } else {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
    }

    public static <T> a zzz(T t) {
        return new m(t);
    }
}
