package com.bumptech.glide.load.b.d;

import android.graphics.Bitmap;
import com.bumptech.glide.g.j;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    static final Bitmap.Config f2186a = Bitmap.Config.RGB_565;

    /* renamed from: b  reason: collision with root package name */
    final int f2187b;
    final int c;
    final Bitmap.Config d;
    final int e;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        final int f2188a;

        /* renamed from: b  reason: collision with root package name */
        final int f2189b;
        Bitmap.Config c;
        int d;

        public a(int i) {
            this(i, i);
        }

        public a(int i, int i2) {
            this.d = 1;
            if (i <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            } else if (i2 > 0) {
                this.f2188a = i;
                this.f2189b = i2;
            } else {
                throw new IllegalArgumentException("Height must be > 0");
            }
        }

        public final a setConfig(Bitmap.Config config) {
            this.c = config;
            return this;
        }

        public final a setWeight(int i) {
            if (i > 0) {
                this.d = i;
                return this;
            }
            throw new IllegalArgumentException("Weight must be > 0");
        }
    }

    d(int i, int i2, Bitmap.Config config, int i3) {
        this.d = (Bitmap.Config) j.checkNotNull(config, "Config must not be null");
        this.f2187b = i;
        this.c = i2;
        this.e = i3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.c == dVar.c && this.f2187b == dVar.f2187b && this.e == dVar.e && this.d == dVar.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (((((this.f2187b * 31) + this.c) * 31) + this.d.hashCode()) * 31) + this.e;
    }

    public final String toString() {
        return "PreFillSize{width=" + this.f2187b + ", height=" + this.c + ", config=" + this.d + ", weight=" + this.e + '}';
    }
}
