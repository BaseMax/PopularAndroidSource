package c.e.a.b.g.f;

import android.util.Log;

/* renamed from: c.e.a.b.g.f.wa  reason: case insensitive filesystem */
public final class C0886wa extends C0870sa<Double> {
    public C0886wa(C0894ya yaVar, String str, Double d2) {
        super(yaVar, str, d2, null);
    }

    /* renamed from: b */
    public final Double a(Object obj) {
        if (obj instanceof Double) {
            return (Double) obj;
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if (obj instanceof String) {
            try {
                return Double.valueOf(Double.parseDouble((String) obj));
            } catch (NumberFormatException unused) {
            }
        }
        String d2 = super.d();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(d2).length() + 27 + String.valueOf(valueOf).length());
        sb.append("Invalid double value for ");
        sb.append(d2);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
