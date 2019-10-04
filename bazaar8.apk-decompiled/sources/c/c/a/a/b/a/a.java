package c.c.a.a.b.a;

import android.app.NotificationManager;
import android.content.Context;
import c.c.a.a.b.a.b.b;
import c.c.a.a.b.c;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: ActionLogTracker.kt */
public final class a implements c {

    /* renamed from: a  reason: collision with root package name */
    public final c.c.a.a.b.a.a.a f4488a;

    public a(c.c.a.a.b.a.a.a aVar) {
        j.b(aVar, "actionLogRepository");
        this.f4488a = aVar;
    }

    public boolean a(c.c.a.a.a.a aVar) {
        j.b(aVar, "event");
        return c.a.a(this, aVar);
    }

    public void a(Context context) {
        j.b(context, "context");
        Object systemService = context.getSystemService("notification");
        if (systemService != null) {
            NotificationManager notificationManager = (NotificationManager) systemService;
            c.c.a.a.b.a.b.a.f4543a.a(notificationManager);
            b.f4546c.a(context, notificationManager);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.app.NotificationManager");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0056  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(c.c.a.a.a.a r5, h.c.b<? super h.h> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.analytics.tracker.actionlog.ActionLogTracker$track$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.analytics.tracker.actionlog.ActionLogTracker$track$1 r0 = (com.farsitel.bazaar.analytics.tracker.actionlog.ActionLogTracker$track$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.analytics.tracker.actionlog.ActionLogTracker$track$1 r0 = new com.farsitel.bazaar.analytics.tracker.actionlog.ActionLogTracker$track$1
            r0.<init>(r4, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0039
            if (r2 != r3) goto L_0x0031
            java.lang.Object r5 = r0.L$1
            c.c.a.a.a.a r5 = (c.c.a.a.a.a) r5
            java.lang.Object r5 = r0.L$0
            c.c.a.a.b.a.a r5 = (c.c.a.a.b.a.a) r5
            h.e.a((java.lang.Object) r6)
            goto L_0x004c
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.a.b.a.a.a r6 = r4.f4488a
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.a(r5, r0)
            if (r6 != r1) goto L_0x004b
            return r1
        L_0x004b:
            r5 = r4
        L_0x004c:
            c.c.a.a.b.a.a.a.a r6 = (c.c.a.a.b.a.a.a.a) r6
            c.c.a.a.b.a.a.a r5 = r5.f4488a
            boolean r5 = r5.b()
            if (r5 == 0) goto L_0x005b
            c.c.a.a.b.a.b.b r5 = c.c.a.a.b.a.b.b.f4546c
            r5.a(r6)
        L_0x005b:
            h.h r5 = h.h.f14579a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.a.b.a.a.a(c.c.a.a.a.a, h.c.b):java.lang.Object");
    }
}
