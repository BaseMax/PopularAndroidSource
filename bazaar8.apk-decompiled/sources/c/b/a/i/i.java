package c.b.a.i;

import android.text.TextUtils;
import java.util.Collection;

/* compiled from: Preconditions */
public final class i {
    public static void a(boolean z, String str) {
        if (!z) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T> T a(T t) {
        a(t, "Argument must not be null");
        return t;
    }

    public static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static String a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    public static <T extends Collection<Y>, Y> T a(T t) {
        if (!t.isEmpty()) {
            return t;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }
}
