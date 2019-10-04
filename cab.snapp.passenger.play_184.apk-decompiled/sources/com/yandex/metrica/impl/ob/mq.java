package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import com.yandex.metrica.impl.au;
import com.yandex.metrica.impl.bv;
import com.yandex.metrica.impl.d;
import com.yandex.metrica.impl.ob.mn;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

class mq extends mm implements d {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final TelephonyManager f6431a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public PhoneStateListener f6432b;
    /* access modifiers changed from: private */
    public boolean c = false;
    /* access modifiers changed from: private */
    public ma d;
    private final d.a<my> e = new d.a<>();
    private final d.a<mn[]> f = new d.a<>();
    private final Handler g;
    private final Context h;
    private final mp i;
    private final mv j;
    private final ms k;

    class a extends PhoneStateListener {
        private a() {
        }

        /* synthetic */ a(mq mqVar, byte b2) {
            this();
        }

        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            super.onSignalStrengthsChanged(signalStrength);
            mq.this.a(signalStrength);
        }
    }

    protected mq(Context context) {
        this.h = context;
        this.f6431a = (TelephonyManager) context.getSystemService("phone");
        HandlerThread a2 = ni.a("YMM-TP");
        a2.start();
        this.g = new Handler(a2.getLooper());
        this.g.post(new Runnable() {
            public void run() {
                mq mqVar = mq.this;
                PhoneStateListener unused = mqVar.f6432b = new a(mqVar, (byte) 0);
            }
        });
        this.i = new mp(this);
        this.j = new mv(this);
        this.k = new ms(this);
    }

    public synchronized void a() {
        this.g.post(new Runnable() {
            public void run() {
                if (!mq.this.c) {
                    boolean unused = mq.this.c = true;
                    h.a().a(mq.this, r.class, l.a(new k<r>() {
                        public void a(r rVar) {
                            synchronized (mq.this) {
                                ma unused = mq.this.d = rVar.f6499b;
                            }
                        }
                    }).a());
                    try {
                        if (mq.this.f6432b != null) {
                            mq.this.f6431a.listen(mq.this.f6432b, 256);
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        });
    }

    public synchronized void b() {
        this.g.post(new Runnable() {
            public void run() {
                if (mq.this.c) {
                    boolean unused = mq.this.c = false;
                    h.a().a((Object) mq.this);
                    try {
                        if (mq.this.f6432b != null) {
                            mq.this.f6431a.listen(mq.this.f6432b, 0);
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
        });
    }

    public synchronized void a(mz mzVar) {
        if (mzVar != null) {
            mzVar.a(e());
        }
    }

    public synchronized void a(mo moVar) {
        if (moVar != null) {
            moVar.a(k());
        }
    }

    public TelephonyManager c() {
        return this.f6431a;
    }

    public Context d() {
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public synchronized my e() {
        my myVar;
        if (!this.e.b()) {
            if (!this.e.c()) {
                myVar = this.e.a();
            }
        }
        myVar = new my(this.i, this.j, this.k);
        mn b2 = myVar.b();
        if (b2 != null && b2.a() == null && !this.e.b()) {
            mn b3 = this.e.a().b();
            if (b3 != null) {
                myVar.b().a(b3.a());
            }
        }
        this.e.a(myVar);
        return myVar;
    }

    private synchronized mn[] k() {
        mn[] mnVarArr;
        if (!this.f.b()) {
            if (!this.f.c()) {
                mnVarArr = this.f.a();
            }
        }
        mnVarArr = f();
        this.f.a(mnVarArr);
        return mnVarArr;
    }

    /* access modifiers changed from: package-private */
    public mn[] f() {
        mn.b bVar;
        ArrayList arrayList = new ArrayList();
        if (j() && bv.a(17) && au.a(this.h, "android.permission.ACCESS_COARSE_LOCATION")) {
            try {
                List<CellInfo> allCellInfo = this.f6431a.getAllCellInfo();
                if (!bv.a((Collection) allCellInfo)) {
                    for (int i2 = 0; i2 < allCellInfo.size(); i2++) {
                        CellInfo cellInfo = allCellInfo.get(i2);
                        mn mnVar = null;
                        if (cellInfo instanceof CellInfoGsm) {
                            bVar = new mn.c();
                        } else if (cellInfo instanceof CellInfoCdma) {
                            bVar = new mn.a();
                        } else if (cellInfo instanceof CellInfoLte) {
                            bVar = new mn.d();
                        } else {
                            bVar = (!bv.a(18) || !(cellInfo instanceof CellInfoWcdma)) ? null : new mn.e();
                        }
                        if (bVar != null) {
                            mnVar = bVar.a(cellInfo);
                        }
                        if (mnVar != null) {
                            arrayList.add(mnVar);
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
        if (arrayList.size() > 0) {
            return (mn[]) arrayList.toArray(new mn[arrayList.size()]);
        }
        mn b2 = e().b();
        if (b2 == null) {
            return new mn[0];
        }
        return new mn[]{b2};
    }

    /* access modifiers changed from: private */
    public synchronized void a(SignalStrength signalStrength) {
        int i2;
        if (!this.e.b() && !this.e.c()) {
            mn b2 = this.e.a().b();
            if (b2 != null) {
                if (signalStrength.isGsm()) {
                    int gsmSignalStrength = signalStrength.getGsmSignalStrength();
                    i2 = 99 == gsmSignalStrength ? -1 : (gsmSignalStrength * 2) - 113;
                } else {
                    int cdmaDbm = signalStrength.getCdmaDbm();
                    i2 = signalStrength.getEvdoDbm();
                    if (-120 == i2) {
                        i2 = cdmaDbm;
                    } else if (-120 != cdmaDbm) {
                        i2 = Math.min(cdmaDbm, i2);
                    }
                }
                b2.a(Integer.valueOf(i2));
            }
        }
    }

    private synchronized boolean l() {
        return this.d != null;
    }

    /* access modifiers changed from: package-private */
    public synchronized boolean g() {
        return l() && this.d.m.n;
    }

    /* access modifiers changed from: package-private */
    public synchronized boolean h() {
        return l() && this.d.m.m;
    }

    /* access modifiers changed from: package-private */
    public synchronized boolean i() {
        return l() && this.d.m.l;
    }

    /* access modifiers changed from: package-private */
    public synchronized boolean j() {
        return l() && !this.d.m.g;
    }
}
