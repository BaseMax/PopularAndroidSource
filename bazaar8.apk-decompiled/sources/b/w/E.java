package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class E extends I<Float> {
    public E(boolean z) {
        super(z);
    }

    public String a() {
        return "float";
    }

    public Float b(String str) {
        return Float.valueOf(Float.parseFloat(str));
    }

    public void a(Bundle bundle, String str, Float f2) {
        bundle.putFloat(str, f2.floatValue());
    }

    public Float a(Bundle bundle, String str) {
        return (Float) bundle.get(str);
    }
}
