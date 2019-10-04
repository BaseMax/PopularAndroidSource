package com.google.android.exoplayer2.util;

import c.e.a.a.o.I;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;

public final class PriorityTaskManager {

    /* renamed from: a  reason: collision with root package name */
    public final Object f12908a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final PriorityQueue<Integer> f12909b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    public int f12910c = Integer.MIN_VALUE;

    public static class PriorityTooLowException extends IOException {
    }

    public void a(int i2) {
        synchronized (this.f12908a) {
            this.f12909b.add(Integer.valueOf(i2));
            this.f12910c = Math.max(this.f12910c, i2);
        }
    }

    public void b(int i2) {
        int i3;
        synchronized (this.f12908a) {
            this.f12909b.remove(Integer.valueOf(i2));
            if (this.f12909b.isEmpty()) {
                i3 = Integer.MIN_VALUE;
            } else {
                Integer peek = this.f12909b.peek();
                I.a(peek);
                i3 = peek.intValue();
            }
            this.f12910c = i3;
            this.f12908a.notifyAll();
        }
    }
}
