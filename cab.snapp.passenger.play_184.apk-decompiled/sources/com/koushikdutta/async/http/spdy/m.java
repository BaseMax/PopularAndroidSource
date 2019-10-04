package com.koushikdutta.async.http.spdy;

import java.util.Arrays;

final class m {
    public static final int DEFAULT_INITIAL_WINDOW_SIZE = 65536;
    public static final int INITIAL_WINDOW_SIZE = 7;

    /* renamed from: a  reason: collision with root package name */
    int f4809a;

    /* renamed from: b  reason: collision with root package name */
    final int[] f4810b = new int[10];
    private int c;
    private int d;

    m() {
    }

    public final void clear() {
        this.d = 0;
        this.c = 0;
        this.f4809a = 0;
        Arrays.fill(this.f4810b, 0);
    }

    public final m set(int i, int i2, int i3) {
        if (i >= this.f4810b.length) {
            return this;
        }
        int i4 = 1 << i;
        this.f4809a |= i4;
        if ((i2 & 1) != 0) {
            this.c |= i4;
        } else {
            this.c &= i4 ^ -1;
        }
        if ((i2 & 2) != 0) {
            this.d |= i4;
        } else {
            this.d &= i4 ^ -1;
        }
        this.f4810b[i] = i3;
        return this;
    }

    /* access modifiers changed from: package-private */
    public final boolean a(int i) {
        return ((1 << i) & this.f4809a) != 0;
    }

    /* access modifiers changed from: package-private */
    public final int a() {
        if ((this.f4809a & 2) != 0) {
            return this.f4810b[1];
        }
        return -1;
    }

    public final int getInitialWindowSize(int i) {
        return (this.f4809a & 128) != 0 ? this.f4810b[7] : i;
    }

    public final void merge(m mVar) {
        for (int i = 0; i < 10; i++) {
            if (mVar.a(i)) {
                set(i, mVar.b(i), mVar.f4810b[i]);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final int b(int i) {
        boolean z = true;
        int i2 = 1 << i;
        int i3 = (this.d & i2) != 0 ? 2 : 0;
        if ((i2 & this.c) == 0) {
            z = false;
        }
        return z ? i3 | 1 : i3;
    }
}
