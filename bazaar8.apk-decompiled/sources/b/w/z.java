package b.w;

import android.os.Bundle;

/* compiled from: NavType */
class z extends I<Integer> {
    public z(boolean z) {
        super(z);
    }

    public String a() {
        return "integer";
    }

    public Integer b(String str) {
        if (str.startsWith("0x")) {
            return Integer.valueOf(Integer.parseInt(str.substring(2), 16));
        }
        return Integer.valueOf(Integer.parseInt(str));
    }

    public void a(Bundle bundle, String str, Integer num) {
        bundle.putInt(str, num.intValue());
    }

    public Integer a(Bundle bundle, String str) {
        return (Integer) bundle.get(str);
    }
}
