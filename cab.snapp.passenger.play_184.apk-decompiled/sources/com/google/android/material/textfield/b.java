package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import androidx.legacy.widget.Space;
import com.google.android.material.a;
import java.util.ArrayList;
import java.util.List;

final class b {

    /* renamed from: a  reason: collision with root package name */
    final Context f4018a;

    /* renamed from: b  reason: collision with root package name */
    final TextInputLayout f4019b;
    Animator c;
    int d;
    int e;
    CharSequence f;
    boolean g;
    TextView h;
    int i;
    CharSequence j;
    boolean k;
    TextView l;
    int m;
    Typeface n;
    private LinearLayout o;
    private int p;
    private FrameLayout q;
    private int r;
    private final float s = ((float) this.f4018a.getResources().getDimensionPixelSize(a.d.design_textinput_caption_translate_y));

    private static boolean c(int i2) {
        return i2 == 0 || i2 == 1;
    }

    public b(TextInputLayout textInputLayout) {
        this.f4018a = textInputLayout.getContext();
        this.f4019b = textInputLayout;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.f = null;
        b();
        if (this.d == 1) {
            if (!this.k || TextUtils.isEmpty(this.j)) {
                this.e = 0;
            } else {
                this.e = 2;
            }
        }
        a(this.d, this.e, a(this.h, (CharSequence) null));
    }

    /* access modifiers changed from: package-private */
    public final boolean a(TextView textView, CharSequence charSequence) {
        return ViewCompat.isLaidOut(this.f4019b) && this.f4019b.isEnabled() && (this.e != this.d || textView == null || !TextUtils.equals(textView.getText(), charSequence));
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2, int i3, boolean z) {
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.c = animatorSet;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            int i4 = i2;
            int i5 = i3;
            a(arrayList2, this.k, this.l, 2, i4, i5);
            a(arrayList2, this.g, this.h, 1, i4, i5);
            com.google.android.material.a.b.playTogether(animatorSet, arrayList);
            final TextView d2 = d(i2);
            final TextView d3 = d(i3);
            final int i6 = i3;
            final int i7 = i2;
            AnonymousClass1 r0 = new AnimatorListenerAdapter() {
                public final void onAnimationEnd(Animator animator) {
                    b bVar = b.this;
                    bVar.d = i6;
                    bVar.c = null;
                    TextView textView = d2;
                    if (textView != null) {
                        textView.setVisibility(4);
                        if (i7 == 1 && b.this.h != null) {
                            b.this.h.setText(null);
                        }
                    }
                }

                public final void onAnimationStart(Animator animator) {
                    TextView textView = d3;
                    if (textView != null) {
                        textView.setVisibility(0);
                    }
                }
            };
            animatorSet.addListener(r0);
            animatorSet.start();
        } else {
            a(i2, i3);
        }
        this.f4019b.a();
        this.f4019b.a(z, false);
        this.f4019b.b();
    }

    private void a(int i2, int i3) {
        if (i2 != i3) {
            if (i3 != 0) {
                TextView d2 = d(i3);
                if (d2 != null) {
                    d2.setVisibility(0);
                    d2.setAlpha(1.0f);
                }
            }
            if (i2 != 0) {
                TextView d3 = d(i2);
                if (d3 != null) {
                    d3.setVisibility(4);
                    if (i2 == 1) {
                        d3.setText(null);
                    }
                }
            }
            this.d = i3;
        }
    }

    private void a(List<Animator> list, boolean z, TextView textView, int i2, int i3, int i4) {
        if (textView != null && z) {
            if (i2 == i4 || i2 == i3) {
                list.add(a(textView, i4 == i2));
                if (i4 == i2) {
                    list.add(a(textView));
                }
            }
        }
    }

    private static ObjectAnimator a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, new float[]{z ? 1.0f : 0.0f});
        ofFloat.setDuration(167);
        ofFloat.setInterpolator(com.google.android.material.a.a.LINEAR_INTERPOLATOR);
        return ofFloat;
    }

    private ObjectAnimator a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, new float[]{-this.s, 0.0f});
        ofFloat.setDuration(217);
        ofFloat.setInterpolator(com.google.android.material.a.a.LINEAR_OUT_SLOW_IN_INTERPOLATOR);
        return ofFloat;
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        Animator animator = this.c;
        if (animator != null) {
            animator.cancel();
        }
    }

    private TextView d(int i2) {
        if (i2 == 1) {
            return this.h;
        }
        if (i2 != 2) {
            return null;
        }
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public final void a(TextView textView, int i2) {
        if (this.o == null && this.q == null) {
            this.o = new LinearLayout(this.f4018a);
            this.o.setOrientation(0);
            this.f4019b.addView(this.o, -1, -2);
            this.q = new FrameLayout(this.f4018a);
            this.o.addView(this.q, -1, new FrameLayout.LayoutParams(-2, -2));
            this.o.addView(new Space(this.f4018a), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f4019b.getEditText() != null) {
                c();
            }
        }
        if (c(i2)) {
            this.q.setVisibility(0);
            this.q.addView(textView);
            this.r++;
        } else {
            this.o.addView(textView, i2);
        }
        this.o.setVisibility(0);
        this.p++;
    }

    /* access modifiers changed from: package-private */
    public final void b(TextView textView, int i2) {
        if (this.o != null) {
            if (c(i2)) {
                FrameLayout frameLayout = this.q;
                if (frameLayout != null) {
                    this.r--;
                    a((ViewGroup) frameLayout, this.r);
                    this.q.removeView(textView);
                    this.p--;
                    a((ViewGroup) this.o, this.p);
                }
            }
            this.o.removeView(textView);
            this.p--;
            a((ViewGroup) this.o, this.p);
        }
    }

    private static void a(ViewGroup viewGroup, int i2) {
        if (i2 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    /* access modifiers changed from: package-private */
    public final boolean d() {
        if (this.e != 1 || this.h == null || TextUtils.isEmpty(this.f)) {
            return false;
        }
        return true;
    }

    static void a(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    /* access modifiers changed from: package-private */
    public final int e() {
        TextView textView = this.h;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    /* access modifiers changed from: package-private */
    public final ColorStateList f() {
        TextView textView = this.h;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2) {
        this.i = i2;
        TextView textView = this.h;
        if (textView != null) {
            this.f4019b.a(textView, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(int i2) {
        this.m = i2;
        TextView textView = this.l;
        if (textView != null) {
            TextViewCompat.setTextAppearance(textView, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void c() {
        if ((this.o == null || this.f4019b.getEditText() == null) ? false : true) {
            ViewCompat.setPaddingRelative(this.o, ViewCompat.getPaddingStart(this.f4019b.getEditText()), 0, ViewCompat.getPaddingEnd(this.f4019b.getEditText()), 0);
        }
    }
}
