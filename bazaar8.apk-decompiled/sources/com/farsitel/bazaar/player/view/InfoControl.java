package com.farsitel.bazaar.player.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import c.c.a.c.h.d;
import c.c.a.l.c.a;
import c.c.a.l.i;
import c.c.a.l.m;
import c.c.a.l.n;
import h.f.b.j;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: InfoControl.kt */
public final class InfoControl extends LinearLayout {

    /* renamed from: a  reason: collision with root package name */
    public AppCompatImageView f12324a;

    /* renamed from: b  reason: collision with root package name */
    public AppCompatTextView f12325b;

    public InfoControl(Context context) {
        super(context);
    }

    private final void setIcon(int i2) {
        AppCompatImageView appCompatImageView = this.f12324a;
        if (appCompatImageView != null) {
            appCompatImageView.setImageResource(i2);
        } else {
            j.c("icon");
            throw null;
        }
    }

    public final void a(TypedArray typedArray) {
        setBackgroundResource(i.shape_sausage_dark);
        int a2 = c.c.a.d.b.i.a(8);
        int a3 = c.c.a.d.b.i.a(12);
        setPadding(a3, a2, a3, a2);
        b(typedArray);
        c(typedArray);
        setLayoutDirection(3);
    }

    public final void b(TypedArray typedArray) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int i2 = 0;
        if (typedArray != null) {
            i2 = typedArray.getResourceId(n.InfoControl_icon, 0);
        }
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        appCompatImageView.setImageResource(i2);
        this.f12324a = appCompatImageView;
        AppCompatImageView appCompatImageView2 = this.f12324a;
        if (appCompatImageView2 != null) {
            addView(appCompatImageView2, layoutParams);
        } else {
            j.c("icon");
            throw null;
        }
    }

    public final void c(TypedArray typedArray) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        Context context = getContext();
        j.a((Object) context, "context");
        layoutParams.setMarginStart(d.a(context, 8.0f));
        layoutParams.gravity = 17;
        String string = typedArray != null ? typedArray.getString(n.InfoControl_text) : null;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        appCompatTextView.setTextColor(-1);
        appCompatTextView.setText(string);
        this.f12325b = appCompatTextView;
        AppCompatTextView appCompatTextView2 = this.f12325b;
        if (appCompatTextView2 != null) {
            addView(appCompatTextView2, layoutParams);
        } else {
            j.c("text");
            throw null;
        }
    }

    public final void setState(PlaybackState playbackState) {
        j.b(playbackState, "state");
        int i2 = a.f6105a[playbackState.ordinal()];
        int i3 = 0;
        if (i2 == 1 || i2 == 2 || i2 == 3) {
            i3 = 8;
        } else if (i2 == 4) {
            setIcon(i.ic_player_error);
            setText(m.player_error_connection);
        } else if (i2 == 5) {
            setIcon(i.ic_player_replay);
            setText(m.player_replay);
        } else {
            throw new NoWhenBranchMatchedException();
        }
        setVisibility(i3);
    }

    public final void setText(String str) {
        j.b(str, "text");
        AppCompatTextView appCompatTextView = this.f12325b;
        if (appCompatTextView != null) {
            appCompatTextView.setText(str);
        } else {
            j.c("text");
            throw null;
        }
    }

    public InfoControl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context != null ? context.obtainStyledAttributes(attributeSet, n.InfoControl) : null;
        a(obtainStyledAttributes);
        if (obtainStyledAttributes != null) {
            obtainStyledAttributes.recycle();
        }
    }

    public final void setText(int i2) {
        AppCompatTextView appCompatTextView = this.f12325b;
        if (appCompatTextView != null) {
            appCompatTextView.setText(i2);
        } else {
            j.c("text");
            throw null;
        }
    }
}
