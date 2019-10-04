package b.b.g;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import b.i.c.a.a;
import b.i.l.c;

/* renamed from: b.b.g.k  reason: case insensitive filesystem */
/* compiled from: AppCompatCompoundButtonHelper */
public class C0220k {

    /* renamed from: a  reason: collision with root package name */
    public final CompoundButton f2182a;

    /* renamed from: b  reason: collision with root package name */
    public ColorStateList f2183b = null;

    /* renamed from: c  reason: collision with root package name */
    public PorterDuff.Mode f2184c = null;

    /* renamed from: d  reason: collision with root package name */
    public boolean f2185d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2186e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2187f;

    public C0220k(CompoundButton compoundButton) {
        this.f2182a = compoundButton;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0031 A[SYNTHETIC, Splitter:B:12:0x0031] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0058 A[Catch:{ all -> 0x0080 }] */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x006b A[Catch:{ all -> 0x0080 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.util.AttributeSet r4, int r5) {
        /*
            r3 = this;
            android.widget.CompoundButton r0 = r3.f2182a
            android.content.Context r0 = r0.getContext()
            int[] r1 = b.b.j.CompoundButton
            r2 = 0
            android.content.res.TypedArray r4 = r0.obtainStyledAttributes(r4, r1, r5, r2)
            int r5 = b.b.j.CompoundButton_buttonCompat     // Catch:{ all -> 0x0080 }
            boolean r5 = r4.hasValue(r5)     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x002e
            int r5 = b.b.j.CompoundButton_buttonCompat     // Catch:{ all -> 0x0080 }
            int r5 = r4.getResourceId(r5, r2)     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x002e
            android.widget.CompoundButton r0 = r3.f2182a     // Catch:{ NotFoundException -> 0x002e }
            android.widget.CompoundButton r1 = r3.f2182a     // Catch:{ NotFoundException -> 0x002e }
            android.content.Context r1 = r1.getContext()     // Catch:{ NotFoundException -> 0x002e }
            android.graphics.drawable.Drawable r5 = b.b.b.a.a.c(r1, r5)     // Catch:{ NotFoundException -> 0x002e }
            r0.setButtonDrawable(r5)     // Catch:{ NotFoundException -> 0x002e }
            r5 = 1
            goto L_0x002f
        L_0x002e:
            r5 = 0
        L_0x002f:
            if (r5 != 0) goto L_0x0050
            int r5 = b.b.j.CompoundButton_android_button     // Catch:{ all -> 0x0080 }
            boolean r5 = r4.hasValue(r5)     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x0050
            int r5 = b.b.j.CompoundButton_android_button     // Catch:{ all -> 0x0080 }
            int r5 = r4.getResourceId(r5, r2)     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x0050
            android.widget.CompoundButton r0 = r3.f2182a     // Catch:{ all -> 0x0080 }
            android.widget.CompoundButton r1 = r3.f2182a     // Catch:{ all -> 0x0080 }
            android.content.Context r1 = r1.getContext()     // Catch:{ all -> 0x0080 }
            android.graphics.drawable.Drawable r5 = b.b.b.a.a.c(r1, r5)     // Catch:{ all -> 0x0080 }
            r0.setButtonDrawable(r5)     // Catch:{ all -> 0x0080 }
        L_0x0050:
            int r5 = b.b.j.CompoundButton_buttonTint     // Catch:{ all -> 0x0080 }
            boolean r5 = r4.hasValue(r5)     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x0063
            android.widget.CompoundButton r5 = r3.f2182a     // Catch:{ all -> 0x0080 }
            int r0 = b.b.j.CompoundButton_buttonTint     // Catch:{ all -> 0x0080 }
            android.content.res.ColorStateList r0 = r4.getColorStateList(r0)     // Catch:{ all -> 0x0080 }
            b.i.l.c.a((android.widget.CompoundButton) r5, (android.content.res.ColorStateList) r0)     // Catch:{ all -> 0x0080 }
        L_0x0063:
            int r5 = b.b.j.CompoundButton_buttonTintMode     // Catch:{ all -> 0x0080 }
            boolean r5 = r4.hasValue(r5)     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x007c
            android.widget.CompoundButton r5 = r3.f2182a     // Catch:{ all -> 0x0080 }
            int r0 = b.b.j.CompoundButton_buttonTintMode     // Catch:{ all -> 0x0080 }
            r1 = -1
            int r0 = r4.getInt(r0, r1)     // Catch:{ all -> 0x0080 }
            r1 = 0
            android.graphics.PorterDuff$Mode r0 = b.b.g.H.a(r0, r1)     // Catch:{ all -> 0x0080 }
            b.i.l.c.a((android.widget.CompoundButton) r5, (android.graphics.PorterDuff.Mode) r0)     // Catch:{ all -> 0x0080 }
        L_0x007c:
            r4.recycle()
            return
        L_0x0080:
            r5 = move-exception
            r4.recycle()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: b.b.g.C0220k.a(android.util.AttributeSet, int):void");
    }

    public ColorStateList b() {
        return this.f2183b;
    }

    public PorterDuff.Mode c() {
        return this.f2184c;
    }

    public void d() {
        if (this.f2187f) {
            this.f2187f = false;
            return;
        }
        this.f2187f = true;
        a();
    }

    public void a(ColorStateList colorStateList) {
        this.f2183b = colorStateList;
        this.f2185d = true;
        a();
    }

    public void a(PorterDuff.Mode mode) {
        this.f2184c = mode;
        this.f2186e = true;
        a();
    }

    public void a() {
        Drawable a2 = c.a(this.f2182a);
        if (a2 == null) {
            return;
        }
        if (this.f2185d || this.f2186e) {
            Drawable mutate = a.i(a2).mutate();
            if (this.f2185d) {
                a.a(mutate, this.f2183b);
            }
            if (this.f2186e) {
                a.a(mutate, this.f2184c);
            }
            if (mutate.isStateful()) {
                mutate.setState(this.f2182a.getDrawableState());
            }
            this.f2182a.setButtonDrawable(mutate);
        }
    }

    public int a(int i2) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i2;
        }
        Drawable a2 = c.a(this.f2182a);
        return a2 != null ? i2 + a2.getIntrinsicWidth() : i2;
    }
}
