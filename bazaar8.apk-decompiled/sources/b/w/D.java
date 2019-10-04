package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class D extends I<long[]> {
    public D(boolean z) {
        super(z);
    }

    public String a() {
        return "long[]";
    }

    public long[] b(String str) {
        throw new UnsupportedOperationException("Arrays don't support default values.");
    }

    public void a(Bundle bundle, String str, long[] jArr) {
        bundle.putLongArray(str, jArr);
    }

    public long[] a(Bundle bundle, String str) {
        return (long[]) bundle.get(str);
    }
}
