package c.c.a.d.e;

import android.content.BroadcastReceiver;
import h.c.e;
import h.f.b.f;
import i.a.C1128u;
import i.a.H;
import i.a.b.p;
import i.a.b.t;
import i.a.va;

/* compiled from: NetworkReceiver.kt */
public final class b extends BroadcastReceiver implements H {

    /* renamed from: a  reason: collision with root package name */
    public static final p<Boolean> f4783a = new p<>();

    /* renamed from: b  reason: collision with root package name */
    public static final a f4784b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public final C1128u f4785c = va.a(null, 1, null);

    /* renamed from: d  reason: collision with root package name */
    public Boolean f4786d;

    /* compiled from: NetworkReceiver.kt */
    public static final class a {
        public a() {
        }

        public final t<Boolean> a() {
            return b.f4783a.b();
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public e a() {
        return c.c.a.c.a.b.f4693c.a().plus(this.f4785c);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x001c  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0021  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0026  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x002c  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0017  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onReceive(android.content.Context r8, android.content.Intent r9) {
        /*
            r7 = this;
            if (r8 == 0) goto L_0x0060
            r0 = 0
            if (r9 == 0) goto L_0x0012
            android.os.Bundle r9 = r9.getExtras()
            if (r9 == 0) goto L_0x0012
            java.lang.String r1 = "networkInfo"
            java.lang.Object r9 = r9.get(r1)
            goto L_0x0013
        L_0x0012:
            r9 = r0
        L_0x0013:
            boolean r1 = r9 instanceof android.net.NetworkInfo
            if (r1 != 0) goto L_0x0018
            r9 = r0
        L_0x0018:
            android.net.NetworkInfo r9 = (android.net.NetworkInfo) r9
            if (r9 == 0) goto L_0x0021
            android.net.NetworkInfo$DetailedState r1 = r9.getDetailedState()
            goto L_0x0022
        L_0x0021:
            r1 = r0
        L_0x0022:
            android.net.NetworkInfo$DetailedState r2 = android.net.NetworkInfo.DetailedState.CONNECTED
            if (r1 != r2) goto L_0x002c
            r8 = 1
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)
            goto L_0x0045
        L_0x002c:
            if (r9 == 0) goto L_0x0033
            android.net.NetworkInfo$DetailedState r9 = r9.getDetailedState()
            goto L_0x0034
        L_0x0033:
            r9 = r0
        L_0x0034:
            android.net.NetworkInfo$DetailedState r1 = android.net.NetworkInfo.DetailedState.DISCONNECTED
            if (r9 != r1) goto L_0x0043
            c.c.a.d.d.e$a r9 = c.c.a.d.d.e.f4772a
            boolean r8 = r9.a(r8)
            java.lang.Boolean r8 = java.lang.Boolean.valueOf(r8)
            goto L_0x0045
        L_0x0043:
            java.lang.Boolean r8 = r7.f4786d
        L_0x0045:
            java.lang.Boolean r9 = r7.f4786d
            boolean r9 = h.f.b.j.a((java.lang.Object) r8, (java.lang.Object) r9)
            if (r9 != 0) goto L_0x0060
            if (r8 != 0) goto L_0x0050
            goto L_0x0060
        L_0x0050:
            r7.f4786d = r8
            r2 = 0
            r3 = 0
            com.farsitel.bazaar.core.receiver.NetworkReceiver$onReceive$1$1 r4 = new com.farsitel.bazaar.core.receiver.NetworkReceiver$onReceive$1$1
            r4.<init>(r8, r0)
            r5 = 3
            r6 = 0
            r1 = r7
            i.a.C1125ra unused = i.a.C1103g.b(r1, r2, r3, r4, r5, r6)
        L_0x0060:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.e.b.onReceive(android.content.Context, android.content.Intent):void");
    }
}
