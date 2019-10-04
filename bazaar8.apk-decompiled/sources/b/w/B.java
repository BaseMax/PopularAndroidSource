package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class B extends I<int[]> {
    public B(boolean z) {
        super(z);
    }

    public String a() {
        return "integer[]";
    }

    public int[] b(String str) {
        throw new UnsupportedOperationException("Arrays don't support default values.");
    }

    public void a(Bundle bundle, String str, int[] iArr) {
        bundle.putIntArray(str, iArr);
    }

    public int[] a(Bundle bundle, String str) {
        return (int[]) bundle.get(str);
    }
}
