package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class x extends I<String> {
    public x(boolean z) {
        super(z);
    }

    public String a() {
        return "string";
    }

    public String b(String str) {
        return str;
    }

    /* renamed from: b */
    public void a(Bundle bundle, String str, String str2) {
        bundle.putString(str, str2);
    }

    public String a(Bundle bundle, String str) {
        return (String) bundle.get(str);
    }
}
