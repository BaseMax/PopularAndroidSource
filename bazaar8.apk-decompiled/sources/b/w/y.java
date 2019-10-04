package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class y extends I<String[]> {
    public y(boolean z) {
        super(z);
    }

    public String a() {
        return "string[]";
    }

    public String[] b(String str) {
        throw new UnsupportedOperationException("Arrays don't support default values.");
    }

    public void a(Bundle bundle, String str, String[] strArr) {
        bundle.putStringArray(str, strArr);
    }

    public String[] a(Bundle bundle, String str) {
        return (String[]) bundle.get(str);
    }
}
