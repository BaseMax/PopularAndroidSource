package com.yandex.metrica.impl.ob;

import android.content.Context;

public class mw extends mm {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f6442a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static volatile mw f6443b;
    private int c;
    private mm d;

    public static mw a(Context context) {
        if (f6443b == null) {
            synchronized (f6442a) {
                if (f6443b == null) {
                    f6443b = new mw(context.getApplicationContext());
                }
            }
        }
        return f6443b;
    }

    mw(Context context) {
        if (context.getPackageManager().hasSystemFeature("android.hardware.telephony")) {
            this.d = new mq(context);
        } else {
            this.d = new mr();
        }
    }

    public synchronized void a() {
        this.c++;
        if (this.c == 1) {
            this.d.a();
        }
    }

    public synchronized void b() {
        this.c--;
        if (this.c == 0) {
            this.d.b();
        }
    }

    public synchronized void a(mz mzVar) {
        this.d.a(mzVar);
    }

    public synchronized void a(mo moVar) {
        this.d.a(moVar);
    }
}
