package com.yandex.metrica.impl;

import android.net.Uri;
import com.yandex.metrica.impl.ob.nd;
import com.yandex.metrica.impl.ob.np;
import com.yandex.metrica.impl.ob.nq;
import com.yandex.metrica.impl.ob.nz;
import com.yandex.metrica.impl.ob.og;
import com.yandex.metrica.impl.ob.oh;
import java.io.IOException;

public abstract class ar extends at {

    /* renamed from: a  reason: collision with root package name */
    private final og f5719a;

    /* renamed from: b  reason: collision with root package name */
    private final nd f5720b;
    private final nq c;

    /* access modifiers changed from: protected */
    public abstract void C();

    public ar() {
        this(new p(), new nz(), new nd(), new np());
    }

    public ar(ap apVar, og ogVar, nd ndVar, nq nqVar) {
        super(apVar);
        this.f5719a = ogVar;
        this.f5720b = ndVar;
        this.c = nqVar;
    }

    public void e() {
        super.e();
        B();
    }

    /* access modifiers changed from: protected */
    public void B() {
        a(Long.valueOf(this.c.a()));
    }

    public boolean c() {
        boolean c2 = super.c();
        if (c2 || p()) {
            C();
        }
        return c2;
    }

    /* access modifiers changed from: protected */
    public void a(Uri.Builder builder) {
        if (this.f5719a.a() == oh.AES_RSA) {
            builder.appendQueryParameter("encrypted_request", "1");
        }
    }

    public boolean c(byte[] bArr) {
        try {
            byte[] a2 = this.f5720b.a(bArr);
            if (a2 == null) {
                return false;
            }
            byte[] a3 = this.f5719a.a(a2);
            if (a3 == null) {
                return false;
            }
            a(a3);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    public void a(byte[] bArr) {
        super.a(bArr);
    }

    /* access modifiers changed from: protected */
    public boolean p() {
        return l() == 400;
    }
}
