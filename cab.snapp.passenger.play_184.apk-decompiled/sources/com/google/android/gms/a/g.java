package com.google.android.gms.a;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

final class g implements k {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ FrameLayout f2551a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ LayoutInflater f2552b;
    private /* synthetic */ ViewGroup c;
    private /* synthetic */ Bundle d;
    private /* synthetic */ c e;

    g(c cVar, FrameLayout frameLayout, LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.e = cVar;
        this.f2551a = frameLayout;
        this.f2552b = layoutInflater;
        this.c = viewGroup;
        this.d = bundle;
    }

    public final int getState() {
        return 2;
    }

    public final void zzb(b bVar) {
        this.f2551a.removeAllViews();
        this.f2551a.addView(this.e.f2544a.onCreateView(this.f2552b, this.c, this.d));
    }
}
