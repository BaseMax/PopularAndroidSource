package f.a.a.g.d;

import com.crashlytics.android.Crashlytics;
import ir.cafebazaar.inline.ux.flow.FlowSnapshot;
import java.util.EmptyStackException;

/* compiled from: FwdActionCallListener */
public class g extends h {

    /* renamed from: c  reason: collision with root package name */
    public String f14473c;

    public g(f.a.a.e.g gVar, String str) {
        super(gVar);
        this.f14473c = str;
    }

    public void a(String str) {
        if (this.f14442b.isShowing()) {
            super.a(str);
            d w = b().f().w();
            try {
                if (w.g().b()) {
                    w.h();
                }
            } catch (EmptyStackException e2) {
                Crashlytics.logException(e2);
            }
            w.a(new FlowSnapshot(this.f14473c));
        }
    }

    public void a(int i2, String str) {
        if (this.f14442b.isShowing()) {
            super.a(i2, str);
        }
    }
}
