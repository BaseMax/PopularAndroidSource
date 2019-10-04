package c.e.a.b.g.f;

import android.util.Log;

/* renamed from: c.e.a.b.g.f.ua  reason: case insensitive filesystem */
public final class C0878ua extends C0870sa<Integer> {
    public C0878ua(C0894ya yaVar, String str, Integer num) {
        super(yaVar, str, num, null);
    }

    /* renamed from: b */
    public final Integer a(Object obj) {
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        if (obj instanceof Long) {
            return Integer.valueOf(((Long) obj).intValue());
        }
        if (obj instanceof String) {
            try {
                return Integer.valueOf(Integer.parseInt((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String d2 = super.d();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(d2).length() + 24 + String.valueOf(valueOf).length());
        sb.append("Invalid int value for ");
        sb.append(d2);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
