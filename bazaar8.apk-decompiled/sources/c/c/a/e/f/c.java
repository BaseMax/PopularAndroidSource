package c.c.a.e.f;

import com.farsitel.bazaar.common.model.VideoPurchaseState;
import h.f.b.f;
import h.f.b.j;

/* compiled from: ConverterDownloadPrice.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5436a = new a(null);

    /* compiled from: ConverterDownloadPrice.kt */
    public static final class a {
        public a() {
        }

        public final VideoPurchaseState a(int i2) {
            return VideoPurchaseState.values()[i2];
        }

        public /* synthetic */ a(f fVar) {
            this();
        }

        public final Integer a(VideoPurchaseState videoPurchaseState) {
            j.b(videoPurchaseState, "state");
            return Integer.valueOf(videoPurchaseState.ordinal());
        }
    }

    public static final VideoPurchaseState a(int i2) {
        return f5436a.a(i2);
    }

    public static final Integer a(VideoPurchaseState videoPurchaseState) {
        return f5436a.a(videoPurchaseState);
    }
}
