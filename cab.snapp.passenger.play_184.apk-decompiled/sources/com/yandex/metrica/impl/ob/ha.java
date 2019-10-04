package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.ki;
import java.util.HashMap;

public interface ha<T> {

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<Class<?>, ha<?>> f6083a;

        /* renamed from: com.yandex.metrica.impl.ob.ha$a$a  reason: collision with other inner class name */
        static final class C0110a {

            /* renamed from: a  reason: collision with root package name */
            static final a f6084a = new a((byte) 0);
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        public static <T> ha<T> a(Class<T> cls) {
            return C0110a.f6084a.b(cls);
        }

        private a() {
            this.f6083a = new HashMap<>();
            this.f6083a.put(ma.class, new ha<ma>() {
                public gk<ma> a(Context context) {
                    return new gl("startup_state", fq.a(context).b(), new gz().a(), new gx());
                }
            });
            this.f6083a.put(ki.a.class, new ha<ki.a>() {
                public gk<ki.a> a(Context context) {
                    return new gl("provided_request_state", fq.a(context).b(), new gz().b(), new gu());
                }
            });
        }

        /* access modifiers changed from: package-private */
        public <T> ha<T> b(Class<T> cls) {
            return this.f6083a.get(cls);
        }
    }

    gk<T> a(Context context);
}
