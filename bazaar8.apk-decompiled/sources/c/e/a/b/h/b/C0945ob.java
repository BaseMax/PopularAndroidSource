package c.e.a.b.h.b;

import android.os.RemoteException;
import c.e.a.b.g.f.fd;
import com.google.android.gms.measurement.internal.zzaj;

/* renamed from: c.e.a.b.h.b.ob  reason: case insensitive filesystem */
public final class C0945ob implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ zzaj f10998a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f10999b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ fd f11000c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11001d;

    public C0945ob(C0921gb gbVar, zzaj zzaj, String str, fd fdVar) {
        this.f11001d = gbVar;
        this.f10998a = zzaj;
        this.f10999b = str;
        this.f11000c = fdVar;
    }

    public final void run() {
        byte[] bArr = null;
        try {
            C0934l d2 = this.f11001d.f10901d;
            if (d2 == null) {
                this.f11001d.e().t().a("Discarding data. Failed to send event to service to bundle");
                return;
            }
            bArr = d2.a(this.f10998a, this.f10999b);
            this.f11001d.H();
            this.f11001d.g().a(this.f11000c, bArr);
        } catch (RemoteException e2) {
            this.f11001d.e().t().a("Failed to send event to the service to bundle", e2);
        } finally {
            this.f11001d.g().a(this.f11000c, bArr);
        }
    }
}
