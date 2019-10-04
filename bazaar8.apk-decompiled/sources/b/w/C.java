package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class C extends I<Long> {
    public C(boolean z) {
        super(z);
    }

    public String a() {
        return "long";
    }

    public Long b(String str) {
        if (str.endsWith("L")) {
            str = str.substring(0, str.length() - 1);
        }
        if (str.startsWith("0x")) {
            return Long.valueOf(Long.parseLong(str.substring(2), 16));
        }
        return Long.valueOf(Long.parseLong(str));
    }

    public void a(Bundle bundle, String str, Long l2) {
        bundle.putLong(str, l2.longValue());
    }

    public Long a(Bundle bundle, String str) {
        return (Long) bundle.get(str);
    }
}
