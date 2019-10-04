package com.a.a.a;

import io.fabric.sdk.android.c;
import java.util.Locale;
import java.util.Map;

final class e {

    /* renamed from: a  reason: collision with root package name */
    final int f1671a;

    /* renamed from: b  reason: collision with root package name */
    final int f1672b;
    boolean c;

    public e(int i, int i2, boolean z) {
        this.f1671a = i;
        this.f1672b = i2;
        this.c = z;
    }

    public final String limitStringLength(String str) {
        if (str.length() <= this.f1672b) {
            return str;
        }
        a(new IllegalArgumentException(String.format(Locale.US, "String is too long, truncating to %d characters", new Object[]{Integer.valueOf(this.f1672b)})));
        return str.substring(0, this.f1672b);
    }

    public final boolean isNull(Object obj, String str) {
        if (obj != null) {
            return false;
        }
        a(new NullPointerException(str + " must not be null"));
        return true;
    }

    public final boolean isFullMap(Map<String, Object> map, String str) {
        if (map.size() < this.f1671a || map.containsKey(str)) {
            return false;
        }
        a(new IllegalArgumentException(String.format(Locale.US, "Limit of %d attributes reached, skipping attribute", new Object[]{Integer.valueOf(this.f1671a)})));
        return true;
    }

    private void a(RuntimeException runtimeException) {
        if (!this.c) {
            c.getLogger().e(b.TAG, "Invalid user input detected", runtimeException);
            return;
        }
        throw runtimeException;
    }
}
