package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class A extends I<Integer> {
    public A(boolean z) {
        super(z);
    }

    public String a() {
        return "reference";
    }

    public Integer b(String str) {
        throw new UnsupportedOperationException("References don't support parsing string values.");
    }

    public void a(Bundle bundle, String str, Integer num) {
        bundle.putInt(str, num.intValue());
    }

    public Integer a(Bundle bundle, String str) {
        return (Integer) bundle.get(str);
    }
}
