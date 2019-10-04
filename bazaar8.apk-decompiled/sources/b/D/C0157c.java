package b.D;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: b.D.c  reason: case insensitive filesystem */
/* compiled from: ChangeBounds */
class C0157c extends AnimatorListenerAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ViewGroup f1135a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ BitmapDrawable f1136b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f1137c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ float f1138d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0167m f1139e;

    public C0157c(C0167m mVar, ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f2) {
        this.f1139e = mVar;
        this.f1135a = viewGroup;
        this.f1136b = bitmapDrawable;
        this.f1137c = view;
        this.f1138d = f2;
    }

    public void onAnimationEnd(Animator animator) {
        ba.b(this.f1135a).b(this.f1136b);
        ba.a(this.f1137c, this.f1138d);
    }
}
