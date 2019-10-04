package com.webengage.sdk.android.actions.rules;

public class h {

    /* renamed from: a  reason: collision with root package name */
    static RuleExecutor f5461a;

    /* renamed from: b  reason: collision with root package name */
    static RuleExecutor f5462b;

    public static RuleExecutor a() {
        if (f5461a == null) {
            synchronized (h.class) {
                if (f5461a == null) {
                    f5461a = new i();
                }
            }
        }
        return f5461a;
    }

    public static RuleExecutor b() {
        if (f5462b == null) {
            f5462b = new j();
        }
        return f5462b;
    }
}
