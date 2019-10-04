package c.e.a.b.g.f;

import android.util.Log;

/* renamed from: c.e.a.b.g.f.ta  reason: case insensitive filesystem */
public final class C0874ta extends C0870sa<Long> {
    public C0874ta(C0894ya yaVar, String str, Long l2) {
        super(yaVar, str, l2, null);
    }

    /* renamed from: b */
    public final Long a(Object obj) {
        if (obj instanceof Long) {
            return (Long) obj;
        }
        if (obj instanceof String) {
            try {
                return Long.valueOf(Long.parseLong((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String d2 = super.d();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(d2).length() + 25 + String.valueOf(valueOf).length());
        sb.append("Invalid long value for ");
        sb.append(d2);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
