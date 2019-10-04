package c.c.a.e.d.m.b.b;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: InitiatePaymentResponseDto.kt */
public abstract class f {

    /* compiled from: InitiatePaymentResponseDto.kt */
    public static final class a extends f {

        /* renamed from: a  reason: collision with root package name */
        public static final a f5273a = new a();

        public a() {
            super(null);
        }
    }

    /* compiled from: InitiatePaymentResponseDto.kt */
    public static final class b extends f {
        @c("redirectUrl")
        public final String redirectUrl;

        public final String a() {
            return this.redirectUrl;
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof b) && j.a((Object) this.redirectUrl, (Object) ((b) obj).redirectUrl));
        }

        public int hashCode() {
            String str = this.redirectUrl;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "WebBasedGatewayData(redirectUrl=" + this.redirectUrl + ")";
        }
    }

    public f() {
    }

    public /* synthetic */ f(h.f.b.f fVar) {
        this();
    }
}
