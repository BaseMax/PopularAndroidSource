package c.e.a.b.e;

import android.os.IBinder;
import c.e.a.b.e.a;
import java.lang.reflect.Field;

public final class b<T> extends a.C0127a {

    /* renamed from: a  reason: collision with root package name */
    public final T f10093a;

    public b(T t) {
        this.f10093a = t;
    }

    public static <T> a a(T t) {
        return new b(t);
    }

    public static <T> T a(a aVar) {
        if (aVar instanceof b) {
            return ((b) aVar).f10093a;
        }
        IBinder asBinder = aVar.asBinder();
        Field[] declaredFields = asBinder.getClass().getDeclaredFields();
        Field field = null;
        int i2 = 0;
        for (Field field2 : declaredFields) {
            if (!field2.isSynthetic()) {
                i2++;
                field = field2;
            }
        }
        if (i2 != 1) {
            int length = declaredFields.length;
            StringBuilder sb = new StringBuilder(64);
            sb.append("Unexpected number of IObjectWrapper declared fields: ");
            sb.append(length);
            throw new IllegalArgumentException(sb.toString());
        } else if (!field.isAccessible()) {
            field.setAccessible(true);
            try {
                return field.get(asBinder);
            } catch (NullPointerException e2) {
                throw new IllegalArgumentException("Binder object is null.", e2);
            } catch (IllegalAccessException e3) {
                throw new IllegalArgumentException("Could not access the field in remoteBinder.", e3);
            }
        } else {
            throw new IllegalArgumentException("IObjectWrapper declared field not private!");
        }
    }
}
