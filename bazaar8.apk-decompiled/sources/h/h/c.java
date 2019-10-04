package h.h;

import h.a.w;
import java.util.NoSuchElementException;

/* compiled from: ProgressionIterators.kt */
public final class c extends w {

    /* renamed from: a  reason: collision with root package name */
    public final int f14584a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f14585b;

    /* renamed from: c  reason: collision with root package name */
    public int f14586c;

    /* renamed from: d  reason: collision with root package name */
    public final int f14587d;

    public c(int i2, int i3, int i4) {
        this.f14587d = i4;
        this.f14584a = i3;
        boolean z = true;
        if (this.f14587d <= 0 ? i2 < i3 : i2 > i3) {
            z = false;
        }
        this.f14585b = z;
        this.f14586c = !this.f14585b ? this.f14584a : i2;
    }

    public boolean hasNext() {
        return this.f14585b;
    }

    public int nextInt() {
        int i2 = this.f14586c;
        if (i2 != this.f14584a) {
            this.f14586c = this.f14587d + i2;
        } else if (this.f14585b) {
            this.f14585b = false;
        } else {
            throw new NoSuchElementException();
        }
        return i2;
    }
}
