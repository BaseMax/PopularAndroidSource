package com.koushikdutta.async.http;

import android.text.TextUtils;

public final class j implements t, Cloneable {

    /* renamed from: a  reason: collision with root package name */
    private final String f4754a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4755b;

    public j(String str, String str2) {
        if (str != null) {
            this.f4754a = str;
            this.f4755b = str2;
            return;
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    public final String getName() {
        return this.f4754a;
    }

    public final String getValue() {
        return this.f4755b;
    }

    public final String toString() {
        return this.f4754a + "=" + this.f4755b;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            j jVar = (j) obj;
            return this.f4754a.equals(jVar.f4754a) && TextUtils.equals(this.f4755b, jVar.f4755b);
        }
    }

    public final int hashCode() {
        return this.f4754a.hashCode() ^ this.f4755b.hashCode();
    }

    public final Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
