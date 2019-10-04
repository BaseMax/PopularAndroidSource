package com.koushikdutta.async.e;

import com.koushikdutta.async.l;
import java.nio.ByteBuffer;

public final class a {

    /* renamed from: a  reason: collision with root package name */
    final int f4514a;

    /* renamed from: b  reason: collision with root package name */
    int f4515b;
    int c;

    public a(int i) {
        this.f4515b = 0;
        this.c = 4096;
        this.f4514a = i;
    }

    public a() {
        this.f4515b = 0;
        this.c = 4096;
        this.f4514a = l.MAX_ITEM_SIZE;
    }

    public final ByteBuffer allocate() {
        return allocate(this.f4515b);
    }

    public final ByteBuffer allocate(int i) {
        return l.obtain(Math.min(Math.max(i, this.c), this.f4514a));
    }

    public final void track(long j) {
        this.f4515b = ((int) j) * 2;
    }

    public final int getMaxAlloc() {
        return this.f4514a;
    }

    public final void setCurrentAlloc(int i) {
        this.f4515b = i;
    }

    public final int getMinAlloc() {
        return this.c;
    }

    public final a setMinAlloc(int i) {
        this.c = i;
        return this;
    }
}
