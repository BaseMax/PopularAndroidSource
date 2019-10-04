package c.e.a.c.v;

import android.animation.Animator;
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
import androidx.appcompat.widget.AppCompatTextView;
import b.i.k.z;
import b.i.l.j;
import c.e.a.c.a.a;
import c.e.a.c.a.b;
import c.e.a.c.d;
import c.e.a.c.f;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.List;

/* compiled from: IndicatorViewController */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final Context f11475a;

    /* renamed from: b  reason: collision with root package name */
    public final TextInputLayout f11476b;

    /* renamed from: c  reason: collision with root package name */
    public LinearLayout f11477c;

    /* renamed from: d  reason: collision with root package name */
    public int f11478d;

    /* renamed from: e  reason: collision with root package name */
    public FrameLayout f11479e;

    /* renamed from: f  reason: collision with root package name */
    public int f11480f;

    /* renamed from: g  reason: collision with root package name */
    public Animator f11481g;

    /* renamed from: h  reason: collision with root package name */
    public final float f11482h = ((float) this.f11475a.getResources().getDimensionPixelSize(d.design_textinput_caption_translate_y));

    /* renamed from: i  reason: collision with root package name */
    public int f11483i;

    /* renamed from: j  reason: collision with root package name */
    public int f11484j;

    /* renamed from: k  reason: collision with root package name */
    public CharSequence f11485k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f11486l;
    public TextView m;
    public int n;
    public CharSequence o;
    public boolean p;
    public TextView q;
    public int r;
    public Typeface s;

    public c(TextInputLayout textInputLayout) {
        this.f11475a = textInputLayout.getContext();
        this.f11476b = textInputLayout;
    }

    public void b(CharSequence charSequence) {
        c();
        this.o = charSequence;
        this.q.setText(charSequence);
        if (this.f11483i != 2) {
            this.f11484j = 2;
        }
        a(this.f11483i, this.f11484j, a(this.q, charSequence));
    }

    public void c() {
        Animator animator = this.f11481g;
        if (animator != null) {
            animator.cancel();
        }
    }

    public boolean c(int i2) {
        return i2 == 0 || i2 == 1;
    }

    public boolean d() {
        return b(this.f11484j);
    }

    public CharSequence e() {
        return this.f11485k;
    }

    public int f() {
        TextView textView = this.m;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    public ColorStateList g() {
        TextView textView = this.m;
        if (textView != null) {
            return textView.getTextColors();
        }
        return null;
    }

    public CharSequence h() {
        return this.o;
    }

    public int i() {
        TextView textView = this.q;
        if (textView != null) {
            return textView.getCurrentTextColor();
        }
        return -1;
    }

    public void j() {
        this.f11485k = null;
        c();
        if (this.f11483i == 1) {
            if (!this.p || TextUtils.isEmpty(this.o)) {
                this.f11484j = 0;
            } else {
                this.f11484j = 2;
            }
        }
        a(this.f11483i, this.f11484j, a(this.m, (CharSequence) null));
    }

    public void k() {
        c();
        if (this.f11483i == 2) {
            this.f11484j = 0;
        }
        a(this.f11483i, this.f11484j, a(this.q, (CharSequence) null));
    }

    public boolean l() {
        return this.f11486l;
    }

    public boolean m() {
        return this.p;
    }

    public void d(int i2) {
        this.n = i2;
        TextView textView = this.m;
        if (textView != null) {
            this.f11476b.a(textView, i2);
        }
    }

    public void e(int i2) {
        this.r = i2;
        TextView textView = this.q;
        if (textView != null) {
            j.e(textView, i2);
        }
    }

    public void a(CharSequence charSequence) {
        c();
        this.f11485k = charSequence;
        this.m.setText(charSequence);
        if (this.f11483i != 1) {
            this.f11484j = 1;
        }
        a(this.f11483i, this.f11484j, a(this.m, charSequence));
    }

    public final boolean b() {
        return (this.f11477c == null || this.f11476b.getEditText() == null) ? false : true;
    }

    public void b(TextView textView, int i2) {
        if (this.f11477c != null) {
            if (c(i2)) {
                FrameLayout frameLayout = this.f11479e;
                if (frameLayout != null) {
                    this.f11480f--;
                    a((ViewGroup) frameLayout, this.f11480f);
                    this.f11479e.removeView(textView);
                    this.f11478d--;
                    a((ViewGroup) this.f11477c, this.f11478d);
                }
            }
            this.f11477c.removeView(textView);
            this.f11478d--;
            a((ViewGroup) this.f11477c, this.f11478d);
        }
    }

    public final boolean a(TextView textView, CharSequence charSequence) {
        return z.B(this.f11476b) && this.f11476b.isEnabled() && (this.f11484j != this.f11483i || textView == null || !TextUtils.equals(textView.getText(), charSequence));
    }

    public final void a(int i2, int i3, boolean z) {
        if (z) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f11481g = animatorSet;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            int i4 = i2;
            int i5 = i3;
            a(arrayList2, this.p, this.q, 2, i4, i5);
            a(arrayList2, this.f11486l, this.m, 1, i4, i5);
            b.a(animatorSet, arrayList);
            b bVar = new b(this, i3, a(i2), i2, a(i3));
            animatorSet.addListener(bVar);
            animatorSet.start();
        } else {
            a(i2, i3);
        }
        this.f11476b.q();
        this.f11476b.d(z);
        this.f11476b.v();
    }

    public void b(boolean z) {
        if (this.p != z) {
            c();
            if (z) {
                this.q = new AppCompatTextView(this.f11475a);
                this.q.setId(f.textinput_helper_text);
                Typeface typeface = this.s;
                if (typeface != null) {
                    this.q.setTypeface(typeface);
                }
                this.q.setVisibility(4);
                z.f(this.q, 1);
                e(this.r);
                a(this.q, 1);
            } else {
                k();
                b(this.q, 1);
                this.q = null;
                this.f11476b.q();
                this.f11476b.v();
            }
            this.p = z;
        }
    }

    public final void a(int i2, int i3) {
        if (i2 != i3) {
            if (i3 != 0) {
                TextView a2 = a(i3);
                if (a2 != null) {
                    a2.setVisibility(0);
                    a2.setAlpha(1.0f);
                }
            }
            if (i2 != 0) {
                TextView a3 = a(i2);
                if (a3 != null) {
                    a3.setVisibility(4);
                    if (i2 == 1) {
                        a3.setText(null);
                    }
                }
            }
            this.f11483i = i3;
        }
    }

    public final boolean b(int i2) {
        if (i2 != 1 || this.m == null || TextUtils.isEmpty(this.f11485k)) {
            return false;
        }
        return true;
    }

    public final void a(List<Animator> list, boolean z, TextView textView, int i2, int i3, int i4) {
        if (textView != null && z) {
            if (i2 == i4 || i2 == i3) {
                list.add(a(textView, i4 == i2));
                if (i4 == i2) {
                    list.add(a(textView));
                }
            }
        }
    }

    public void b(ColorStateList colorStateList) {
        TextView textView = this.q;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public final ObjectAnimator a(TextView textView, boolean z) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.ALPHA, new float[]{z ? 1.0f : 0.0f});
        ofFloat.setDuration(167);
        ofFloat.setInterpolator(a.f11184a);
        return ofFloat;
    }

    public final ObjectAnimator a(TextView textView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(textView, View.TRANSLATION_Y, new float[]{-this.f11482h, 0.0f});
        ofFloat.setDuration(217);
        ofFloat.setInterpolator(a.f11187d);
        return ofFloat;
    }

    public final TextView a(int i2) {
        if (i2 == 1) {
            return this.m;
        }
        if (i2 != 2) {
            return null;
        }
        return this.q;
    }

    public void a() {
        if (b()) {
            z.a(this.f11477c, z.q(this.f11476b.getEditText()), 0, z.p(this.f11476b.getEditText()), 0);
        }
    }

    public void a(TextView textView, int i2) {
        if (this.f11477c == null && this.f11479e == null) {
            this.f11477c = new LinearLayout(this.f11475a);
            this.f11477c.setOrientation(0);
            this.f11476b.addView(this.f11477c, -1, -2);
            this.f11479e = new FrameLayout(this.f11475a);
            this.f11477c.addView(this.f11479e, -1, new FrameLayout.LayoutParams(-2, -2));
            this.f11477c.addView(new b.q.b.a(this.f11475a), new LinearLayout.LayoutParams(0, 0, 1.0f));
            if (this.f11476b.getEditText() != null) {
                a();
            }
        }
        if (c(i2)) {
            this.f11479e.setVisibility(0);
            this.f11479e.addView(textView);
            this.f11480f++;
        } else {
            this.f11477c.addView(textView, i2);
        }
        this.f11477c.setVisibility(0);
        this.f11478d++;
    }

    public final void a(ViewGroup viewGroup, int i2) {
        if (i2 == 0) {
            viewGroup.setVisibility(8);
        }
    }

    public void a(boolean z) {
        if (this.f11486l != z) {
            c();
            if (z) {
                this.m = new AppCompatTextView(this.f11475a);
                this.m.setId(f.textinput_error);
                Typeface typeface = this.s;
                if (typeface != null) {
                    this.m.setTypeface(typeface);
                }
                d(this.n);
                this.m.setVisibility(4);
                z.f(this.m, 1);
                a(this.m, 0);
            } else {
                j();
                b(this.m, 0);
                this.m = null;
                this.f11476b.q();
                this.f11476b.v();
            }
            this.f11486l = z;
        }
    }

    public void a(Typeface typeface) {
        if (typeface != this.s) {
            this.s = typeface;
            a(this.m, typeface);
            a(this.q, typeface);
        }
    }

    public final void a(TextView textView, Typeface typeface) {
        if (textView != null) {
            textView.setTypeface(typeface);
        }
    }

    public void a(ColorStateList colorStateList) {
        TextView textView = this.m;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }
}
