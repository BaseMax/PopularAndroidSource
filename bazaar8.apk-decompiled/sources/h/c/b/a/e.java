package h.c.b.a;

import h.f.b.j;
import java.lang.reflect.Field;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* compiled from: DebugMetadata.kt */
public final class e {
    public static final d a(BaseContinuationImpl baseContinuationImpl) {
        return (d) baseContinuationImpl.getClass().getAnnotation(d.class);
    }

    public static final int b(BaseContinuationImpl baseContinuationImpl) {
        try {
            Field declaredField = baseContinuationImpl.getClass().getDeclaredField("label");
            j.a((Object) declaredField, "field");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(baseContinuationImpl);
            if (!(obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            return (num != null ? num.intValue() : 0) - 1;
        } catch (Exception unused) {
            return -1;
        }
    }

    public static final StackTraceElement c(BaseContinuationImpl baseContinuationImpl) {
        int i2;
        String str;
        j.b(baseContinuationImpl, "$this$getStackTraceElementImpl");
        d a2 = a(baseContinuationImpl);
        if (a2 == null) {
            return null;
        }
        a(1, a2.v());
        int b2 = b(baseContinuationImpl);
        if (b2 < 0) {
            i2 = -1;
        } else {
            i2 = a2.l()[b2];
        }
        if (g.f14532c.b(baseContinuationImpl) == null) {
            str = a2.c();
        } else {
            str = r4 + '/' + a2.c();
        }
        return new StackTraceElement(str, a2.m(), a2.f(), i2);
    }

    public static final void a(int i2, int i3) {
        if (i3 > i2) {
            throw new IllegalStateException(("Debug metadata version mismatch. Expected: " + i2 + ", got " + i3 + ". Please update the Kotlin standard library.").toString());
        }
    }
}
