package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.b;
import java.util.concurrent.atomic.AtomicReference;

public abstract class cw extends LifecycleCallback implements DialogInterface.OnCancelListener {

    /* renamed from: b  reason: collision with root package name */
    private final Handler f2835b;
    protected volatile boolean c;
    protected final AtomicReference<cx> d;
    protected final b e;

    protected cw(bd bdVar) {
        this(bdVar, b.getInstance());
    }

    private cw(bd bdVar, b bVar) {
        super(bdVar);
        this.d = new AtomicReference<>(null);
        this.f2835b = new Handler(Looper.getMainLooper());
        this.e = bVar;
    }

    /* access modifiers changed from: protected */
    public abstract void a();

    /* access modifiers changed from: protected */
    public abstract void a(ConnectionResult connectionResult, int i);

    /* access modifiers changed from: protected */
    public final void b() {
        this.d.set(null);
        a();
    }

    public void onCancel(DialogInterface dialogInterface) {
        a(new ConnectionResult(13, null), a(this.d.get()));
        b();
    }

    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.d.set(bundle.getBoolean("resolving_error", false) ? new cx(new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    public void onStart() {
        super.onStart();
        this.c = true;
    }

    public void onStop() {
        super.onStop();
        this.c = false;
    }

    public final void zzb(ConnectionResult connectionResult, int i) {
        cx cxVar = new cx(connectionResult, i);
        if (this.d.compareAndSet(null, cxVar)) {
            this.f2835b.post(new cy(this, cxVar));
        }
    }

    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        cx cxVar = this.d.get();
        if (cxVar != null) {
            bundle.putBoolean("resolving_error", true);
            bundle.putInt("failed_client_id", cxVar.f2836a);
            bundle.putInt("failed_status", cxVar.f2837b.getErrorCode());
            bundle.putParcelable("failed_resolution", cxVar.f2837b.getResolution());
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0056  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x005a  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void onActivityResult(int r4, int r5, android.content.Intent r6) {
        /*
            r3 = this;
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.common.api.internal.cx> r0 = r3.d
            java.lang.Object r0 = r0.get()
            com.google.android.gms.common.api.internal.cx r0 = (com.google.android.gms.common.api.internal.cx) r0
            r1 = 1
            r2 = 0
            if (r4 == r1) goto L_0x002e
            r5 = 2
            if (r4 == r5) goto L_0x0010
            goto L_0x0053
        L_0x0010:
            com.google.android.gms.common.b r4 = r3.e
            android.app.Activity r5 = r3.getActivity()
            int r4 = r4.isGooglePlayServicesAvailable(r5)
            if (r4 != 0) goto L_0x001d
            goto L_0x001e
        L_0x001d:
            r1 = 0
        L_0x001e:
            if (r0 != 0) goto L_0x0021
            return
        L_0x0021:
            com.google.android.gms.common.ConnectionResult r5 = r0.f2837b
            int r5 = r5.getErrorCode()
            r6 = 18
            if (r5 != r6) goto L_0x0054
            if (r4 != r6) goto L_0x0054
            return
        L_0x002e:
            r4 = -1
            if (r5 != r4) goto L_0x0032
            goto L_0x0054
        L_0x0032:
            if (r5 != 0) goto L_0x0053
            r4 = 13
            if (r6 == 0) goto L_0x003e
            java.lang.String r5 = "<<ResolutionFailureErrorDetail>>"
            int r4 = r6.getIntExtra(r5, r4)
        L_0x003e:
            com.google.android.gms.common.api.internal.cx r5 = new com.google.android.gms.common.api.internal.cx
            com.google.android.gms.common.ConnectionResult r6 = new com.google.android.gms.common.ConnectionResult
            r1 = 0
            r6.<init>(r4, r1)
            int r4 = a(r0)
            r5.<init>(r6, r4)
            java.util.concurrent.atomic.AtomicReference<com.google.android.gms.common.api.internal.cx> r4 = r3.d
            r4.set(r5)
            r0 = r5
        L_0x0053:
            r1 = 0
        L_0x0054:
            if (r1 == 0) goto L_0x005a
            r3.b()
            return
        L_0x005a:
            if (r0 == 0) goto L_0x0063
            com.google.android.gms.common.ConnectionResult r4 = r0.f2837b
            int r5 = r0.f2836a
            r3.a(r4, r5)
        L_0x0063:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.api.internal.cw.onActivityResult(int, int, android.content.Intent):void");
    }

    private static int a(cx cxVar) {
        if (cxVar == null) {
            return -1;
        }
        return cxVar.f2836a;
    }
}
