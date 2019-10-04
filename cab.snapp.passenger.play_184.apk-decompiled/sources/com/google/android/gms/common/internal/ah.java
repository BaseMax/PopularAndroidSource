package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.List;

public final class ah {

    /* renamed from: a  reason: collision with root package name */
    private final List<String> f2925a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f2926b;

    private ah(Object obj) {
        this.f2926b = ap.checkNotNull(obj);
        this.f2925a = new ArrayList();
    }

    /* synthetic */ ah(Object obj, byte b2) {
        this(obj);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append(this.f2926b.getClass().getSimpleName());
        sb.append('{');
        int size = this.f2925a.size();
        for (int i = 0; i < size; i++) {
            sb.append(this.f2925a.get(i));
            if (i < size - 1) {
                sb.append(", ");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public final ah zzg(String str, Object obj) {
        List<String> list = this.f2925a;
        String str2 = (String) ap.checkNotNull(str);
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length());
        sb.append(str2);
        sb.append("=");
        sb.append(valueOf);
        list.add(sb.toString());
        return this;
    }
}
