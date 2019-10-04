package b.b.a;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import b.b.f.b;
import b.b.j;

/* renamed from: b.b.a.a  reason: case insensitive filesystem */
/* compiled from: ActionBar */
public abstract class C0190a {

    /* renamed from: b.b.a.a$a  reason: collision with other inner class name */
    /* compiled from: ActionBar */
    public static class C0020a extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f1730a;

        public C0020a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1730a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.ActionBarLayout);
            this.f1730a = obtainStyledAttributes.getInt(j.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public C0020a(int i2, int i3) {
            super(i2, i3);
            this.f1730a = 0;
            this.f1730a = 8388627;
        }

        public C0020a(C0020a aVar) {
            super(aVar);
            this.f1730a = 0;
            this.f1730a = aVar.f1730a;
        }

        public C0020a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1730a = 0;
        }
    }

    /* renamed from: b.b.a.a$b */
    /* compiled from: ActionBar */
    public interface b {
        void onMenuVisibilityChanged(boolean z);
    }

    @Deprecated
    /* renamed from: b.b.a.a$c */
    /* compiled from: ActionBar */
    public static abstract class c {
        public abstract CharSequence a();

        public abstract View b();

        public abstract Drawable c();

        public abstract CharSequence d();

        public abstract void e();
    }

    public b.b.f.b a(b.a aVar) {
        return null;
    }

    public void a(Configuration configuration) {
    }

    public abstract void a(CharSequence charSequence);

    public abstract boolean a(int i2, KeyEvent keyEvent);

    public boolean a(KeyEvent keyEvent) {
        return false;
    }

    public abstract void b(boolean z);

    public abstract void c(boolean z);

    public abstract void d(boolean z);

    public boolean e() {
        return false;
    }

    public abstract boolean f();

    public abstract int g();

    public abstract Context h();

    public boolean i() {
        return false;
    }

    public void j() {
    }

    public boolean k() {
        return false;
    }
}
