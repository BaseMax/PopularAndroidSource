package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.ev;
import java.util.concurrent.ScheduledExecutorService;

public class ey {

    /* renamed from: a  reason: collision with root package name */
    private Context f5997a;

    /* renamed from: b  reason: collision with root package name */
    private eu f5998b;
    private ev c;
    /* access modifiers changed from: private */
    public ex d;
    private fg e;
    private fh f;

    public ey(Context context, ScheduledExecutorService scheduledExecutorService, ez ezVar) {
        this(context, scheduledExecutorService, ezVar, new ex(context));
    }

    public void a() {
        ff a2 = this.e.a(this.f5997a.getPackageName());
        if ((a2 == null || a2.f6007b == null || a2.f6007b.f6005b == null || a2.f6007b.f6004a == null) ? false : true) {
            boolean z = a2.f6007b.i;
            Long l = a2.f6007b.f6005b;
            Long valueOf = Long.valueOf(this.f.d(0));
            boolean b2 = this.f.b(false);
            if (this.c.b()) {
                if (z) {
                    a(l.longValue());
                }
            } else if (z != b2) {
                if (z) {
                    a(l.longValue());
                    return;
                }
                this.c.a();
                this.f.a(false);
            } else if (z && l.compareTo(valueOf) != 0) {
                a(l.longValue());
            }
        }
    }

    private void a(long j) {
        this.c.a(j);
        this.f.a(true);
        this.f.c(j);
    }

    public void a(final fa faVar) {
        ff a2 = this.e.a(this.f5997a.getPackageName());
        if (a2 == null || a2.f6007b == null) {
            c(faVar);
            return;
        }
        Long l = a2.f6007b.f6004a;
        if (l == null || l.longValue() <= 0) {
            c(faVar);
            return;
        }
        this.d.a(this.f5998b.a());
        this.c.a(l.longValue(), new ev.a() {
            public void a() {
                ey.this.d.a();
                ey.c(faVar);
            }
        });
    }

    /* access modifiers changed from: private */
    public static void c(fa faVar) {
        if (faVar != null) {
            faVar.a();
        }
    }

    private ey(Context context, ScheduledExecutorService scheduledExecutorService, ez ezVar, ex exVar) {
        this(context, new eu(context, exVar), new ev(context, scheduledExecutorService, ezVar), exVar, fg.a(context), new fh(context));
    }

    ey(Context context, eu euVar, ev evVar, ex exVar, fg fgVar, fh fhVar) {
        this.f5997a = context;
        this.f5998b = euVar;
        this.c = evVar;
        this.d = exVar;
        this.e = fgVar;
        this.f = fhVar;
    }
}
