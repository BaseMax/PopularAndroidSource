package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class H extends I<boolean[]> {
    public H(boolean z) {
        super(z);
    }

    public String a() {
        return "boolean[]";
    }

    public boolean[] b(String str) {
        throw new UnsupportedOperationException("Arrays don't support default values.");
    }

    public void a(Bundle bundle, String str, boolean[] zArr) {
        bundle.putBooleanArray(str, zArr);
    }

    public boolean[] a(Bundle bundle, String str) {
        return (boolean[]) bundle.get(str);
    }
}
