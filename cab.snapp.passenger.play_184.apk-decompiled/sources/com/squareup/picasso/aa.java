package com.squareup.picasso;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

final class aa {

    /* renamed from: a  reason: collision with root package name */
    final HandlerThread f5257a = new HandlerThread("Picasso-Stats", 10);

    /* renamed from: b  reason: collision with root package name */
    final d f5258b;
    final Handler c;
    long d;
    long e;
    long f;
    long g;
    long h;
    long i;
    long j;
    long k;
    int l;
    int m;
    int n;

    static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final aa f5259a;

        a(Looper looper, aa aaVar) {
            super(looper);
            this.f5259a = aaVar;
        }

        public final void handleMessage(final Message message) {
            int i = message.what;
            if (i == 0) {
                this.f5259a.d++;
            } else if (i == 1) {
                this.f5259a.e++;
            } else if (i == 2) {
                aa aaVar = this.f5259a;
                long j = (long) message.arg1;
                aaVar.m++;
                aaVar.g += j;
                aaVar.j = aaVar.g / ((long) aaVar.m);
            } else if (i == 3) {
                aa aaVar2 = this.f5259a;
                long j2 = (long) message.arg1;
                aaVar2.n++;
                aaVar2.h += j2;
                aaVar2.k = aaVar2.h / ((long) aaVar2.m);
            } else if (i != 4) {
                Picasso.f5244a.post(new Runnable() {
                    public final void run() {
                        throw new AssertionError("Unhandled stats message." + message.what);
                    }
                });
            } else {
                aa aaVar3 = this.f5259a;
                aaVar3.l++;
                aaVar3.f += ((Long) message.obj).longValue();
                aaVar3.i = aaVar3.f / ((long) aaVar3.l);
            }
        }
    }

    aa(d dVar) {
        this.f5258b = dVar;
        this.f5257a.start();
        af.a(this.f5257a.getLooper());
        this.c = new a(this.f5257a.getLooper(), this);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.c.sendEmptyMessage(0);
    }

    /* access modifiers changed from: package-private */
    public final ab b() {
        ab abVar = new ab(this.f5258b.maxSize(), this.f5258b.size(), this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, System.currentTimeMillis());
        return abVar;
    }

    /* access modifiers changed from: package-private */
    public final void a(Bitmap bitmap, int i2) {
        int a2 = af.a(bitmap);
        Handler handler = this.c;
        handler.sendMessage(handler.obtainMessage(i2, a2, 0));
    }
}
