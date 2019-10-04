package c.e.a.b.g.f;

import android.util.Log;

/* renamed from: c.e.a.b.g.f.va  reason: case insensitive filesystem */
public final class C0882va extends C0870sa<Boolean> {
    public C0882va(C0894ya yaVar, String str, Boolean bool) {
        super(yaVar, str, bool, null);
    }

    public final /* synthetic */ Object a(Object obj) {
        if (obj instanceof Boolean) {
            return (Boolean) obj;
        }
        if (obj instanceof String) {
            String str = (String) obj;
            if (C0815ea.f10387c.matcher(str).matches()) {
                return true;
            }
            if (C0815ea.f10388d.matcher(str).matches()) {
                return false;
            }
        }
        String d2 = super.d();
        String valueOf = String.valueOf(obj);
        StringBuilder sb = new StringBuilder(String.valueOf(d2).length() + 28 + String.valueOf(valueOf).length());
        sb.append("Invalid boolean value for ");
        sb.append(d2);
        sb.append(": ");
        sb.append(valueOf);
        Log.e("PhenotypeFlag", sb.toString());
        return null;
    }
}
