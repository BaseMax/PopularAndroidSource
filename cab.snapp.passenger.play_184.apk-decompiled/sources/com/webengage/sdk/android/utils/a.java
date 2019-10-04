package com.webengage.sdk.android.utils;

import com.webengage.sdk.android.utils.a.f;
import com.webengage.sdk.android.utils.a.g;

public class a {

    /* renamed from: com.webengage.sdk.android.utils.a$a  reason: collision with other inner class name */
    static class C0106a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private Object f5576a;

        private C0106a(Object obj) {
            this.f5576a = obj;
        }

        public void run() {
            try {
                if (this.f5576a instanceof Runnable) {
                    ((Runnable) this.f5576a).run();
                    return;
                }
                if (this.f5576a instanceof f) {
                    g i = ((f) this.f5576a).i();
                    if (i.i()) {
                        i.m();
                        return;
                    }
                    i.n();
                }
            } catch (Exception unused) {
            }
        }
    }

    public static void a(Object obj) {
        j.a().a(new C0106a(obj));
    }
}
