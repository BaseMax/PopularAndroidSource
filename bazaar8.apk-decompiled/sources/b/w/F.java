package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class F extends I<float[]> {
    public F(boolean z) {
        super(z);
    }

    public String a() {
        return "float[]";
    }

    public float[] b(String str) {
        throw new UnsupportedOperationException("Arrays don't support default values.");
    }

    public void a(Bundle bundle, String str, float[] fArr) {
        bundle.putFloatArray(str, fArr);
    }

    public float[] a(Bundle bundle, String str) {
        return (float[]) bundle.get(str);
    }
}
