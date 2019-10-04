package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class G extends I<Boolean> {
    public G(boolean z) {
        super(z);
    }

    public String a() {
        return "boolean";
    }

    public Boolean b(String str) {
        if ("true".equals(str)) {
            return true;
        }
        if ("false".equals(str)) {
            return false;
        }
        throw new IllegalArgumentException("A boolean NavType only accepts \"true\" or \"false\" values.");
    }

    public void a(Bundle bundle, String str, Boolean bool) {
        bundle.putBoolean(str, bool.booleanValue());
    }

    public Boolean a(Bundle bundle, String str) {
        return (Boolean) bundle.get(str);
    }
}
