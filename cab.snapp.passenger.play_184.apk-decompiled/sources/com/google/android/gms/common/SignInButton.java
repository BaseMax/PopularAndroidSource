package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.a;
import com.google.android.gms.a.p;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.at;
import com.google.android.gms.common.internal.zzby;

public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;

    /* renamed from: a  reason: collision with root package name */
    private int f2723a;

    /* renamed from: b  reason: collision with root package name */
    private int f2724b;
    private View c;
    private View.OnClickListener d;

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: finally extract failed */
    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.d = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.d.SignInButton, 0, 0);
        try {
            this.f2723a = obtainStyledAttributes.getInt(a.d.SignInButton_buttonSize, 0);
            this.f2724b = obtainStyledAttributes.getInt(a.d.SignInButton_colorScheme, 2);
            obtainStyledAttributes.recycle();
            setStyle(this.f2723a, this.f2724b);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.d;
        if (onClickListener != null && view == this.c) {
            onClickListener.onClick(this);
        }
    }

    public final void setColorScheme(int i) {
        setStyle(this.f2723a, i);
    }

    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.c.setEnabled(z);
    }

    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.d = onClickListener;
        View view = this.c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) {
        setStyle(this.f2723a, this.f2724b);
    }

    public final void setSize(int i) {
        setStyle(i, this.f2724b);
    }

    public final void setStyle(int i, int i2) {
        this.f2723a = i;
        this.f2724b = i2;
        Context context = getContext();
        View view = this.c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.c = at.zzc(context, this.f2723a, this.f2724b);
        } catch (p unused) {
            int i3 = this.f2723a;
            int i4 = this.f2724b;
            zzby zzby = new zzby(context);
            zzby.zza(context.getResources(), i3, i4);
            this.c = zzby;
        }
        addView(this.c);
        this.c.setEnabled(isEnabled());
        this.c.setOnClickListener(this);
    }

    @Deprecated
    public final void setStyle(int i, int i2, Scope[] scopeArr) {
        setStyle(i, i2);
    }
}
