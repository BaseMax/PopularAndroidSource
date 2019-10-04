package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.b;
import com.google.android.gms.common.zzc;
import java.util.Set;

public abstract class c<T extends IInterface> extends ax<T> implements a.f, g {

    /* renamed from: a  reason: collision with root package name */
    protected final bl f2960a;
    private final Set<Scope> g;
    private final Account h;

    protected c(Context context, Looper looper, int i, bl blVar, f.b bVar, f.c cVar) {
        this(context, looper, h.zzco(context), b.getInstance(), i, blVar, (f.b) ap.checkNotNull(bVar), (f.c) ap.checkNotNull(cVar));
    }

    /* JADX WARNING: Illegal instructions before constructor call */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private c(android.content.Context r11, android.os.Looper r12, com.google.android.gms.common.internal.h r13, com.google.android.gms.common.b r14, int r15, com.google.android.gms.common.internal.bl r16, com.google.android.gms.common.api.f.b r17, com.google.android.gms.common.api.f.c r18) {
        /*
            r10 = this;
            r9 = r10
            r0 = r17
            r1 = r18
            r2 = 0
            if (r0 != 0) goto L_0x000a
            r6 = r2
            goto L_0x0010
        L_0x000a:
            com.google.android.gms.common.internal.d r3 = new com.google.android.gms.common.internal.d
            r3.<init>(r0)
            r6 = r3
        L_0x0010:
            if (r1 != 0) goto L_0x0014
            r7 = r2
            goto L_0x001a
        L_0x0014:
            com.google.android.gms.common.internal.e r0 = new com.google.android.gms.common.internal.e
            r0.<init>(r1)
            r7 = r0
        L_0x001a:
            java.lang.String r8 = r16.zzakz()
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r13
            r4 = r14
            r5 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = r16
            r9.f2960a = r0
            android.accounts.Account r1 = r16.getAccount()
            r9.h = r1
            java.util.Set r0 = r16.zzakw()
            java.util.Iterator r1 = r0.iterator()
        L_0x0039:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0054
            java.lang.Object r2 = r1.next()
            com.google.android.gms.common.api.Scope r2 = (com.google.android.gms.common.api.Scope) r2
            boolean r2 = r0.contains(r2)
            if (r2 == 0) goto L_0x004c
            goto L_0x0039
        L_0x004c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Expanding scopes is not permitted, use implied scopes instead"
            r0.<init>(r1)
            throw r0
        L_0x0054:
            r9.g = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.c.<init>(android.content.Context, android.os.Looper, com.google.android.gms.common.internal.h, com.google.android.gms.common.b, int, com.google.android.gms.common.internal.bl, com.google.android.gms.common.api.f$b, com.google.android.gms.common.api.f$c):void");
    }

    /* access modifiers changed from: protected */
    public final Set<Scope> a() {
        return this.g;
    }

    public final Account getAccount() {
        return this.h;
    }

    public zzc[] zzakl() {
        return new zzc[0];
    }
}
