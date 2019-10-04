package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;

final class eh extends Drawable.ConstantState {

    /* renamed from: a  reason: collision with root package name */
    int f3139a;

    /* renamed from: b  reason: collision with root package name */
    int f3140b;

    eh(eh ehVar) {
        if (ehVar != null) {
            this.f3139a = ehVar.f3139a;
            this.f3140b = ehVar.f3140b;
        }
    }

    public final int getChangingConfigurations() {
        return this.f3139a;
    }

    public final Drawable newDrawable() {
        return new ee(this);
    }
}
