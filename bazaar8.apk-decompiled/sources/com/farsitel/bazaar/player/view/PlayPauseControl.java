package com.farsitel.bazaar.player.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import c.c.a.c.h.d;
import c.c.a.l.c.b;
import c.c.a.l.i;
import h.f.b.j;

/* compiled from: PlayPauseControl.kt */
public final class PlayPauseControl extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public AppCompatImageView f12326a;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayPauseControl(Context context) {
        super(context);
        j.b(context, "context");
        b();
    }

    public final void a() {
        Context context = getContext();
        j.a((Object) context, "context");
        int a2 = d.a(context, 80.0f);
        Context context2 = getContext();
        j.a((Object) context2, "context");
        int a3 = d.a(context2, 20.0f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a2, a2);
        AppCompatImageView appCompatImageView = new AppCompatImageView(getContext());
        appCompatImageView.setBackgroundResource(i.shape_circle_light);
        appCompatImageView.setPadding(a3, a3, a3, a3);
        if (appCompatImageView.isInEditMode()) {
            AppCompatImageView appCompatImageView2 = this.f12326a;
            if (appCompatImageView2 != null) {
                appCompatImageView2.setImageResource(i.ic_player_play);
            } else {
                j.c("button");
                throw null;
            }
        } else {
            appCompatImageView.setVisibility(8);
        }
        this.f12326a = appCompatImageView;
        AppCompatImageView appCompatImageView3 = this.f12326a;
        if (appCompatImageView3 != null) {
            addView(appCompatImageView3, layoutParams);
        } else {
            j.c("button");
            throw null;
        }
    }

    public final void b() {
        setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        a();
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        AppCompatImageView appCompatImageView = this.f12326a;
        if (appCompatImageView != null) {
            appCompatImageView.setOnClickListener(onClickListener);
        } else {
            j.c("button");
            throw null;
        }
    }

    public final void setState(PlaybackState playbackState) {
        j.b(playbackState, "playbackState");
        int i2 = b.f6106a[playbackState.ordinal()];
        if (i2 == 1) {
            AppCompatImageView appCompatImageView = this.f12326a;
            if (appCompatImageView != null) {
                appCompatImageView.setImageResource(i.ic_player_pause);
                AppCompatImageView appCompatImageView2 = this.f12326a;
                if (appCompatImageView2 != null) {
                    appCompatImageView2.setVisibility(0);
                } else {
                    j.c("button");
                    throw null;
                }
            } else {
                j.c("button");
                throw null;
            }
        } else if (i2 == 2) {
            AppCompatImageView appCompatImageView3 = this.f12326a;
            if (appCompatImageView3 != null) {
                appCompatImageView3.setImageResource(i.ic_player_play);
                AppCompatImageView appCompatImageView4 = this.f12326a;
                if (appCompatImageView4 != null) {
                    appCompatImageView4.setVisibility(0);
                } else {
                    j.c("button");
                    throw null;
                }
            } else {
                j.c("button");
                throw null;
            }
        } else if (i2 == 3) {
            AppCompatImageView appCompatImageView5 = this.f12326a;
            if (appCompatImageView5 != null) {
                appCompatImageView5.setVisibility(8);
            } else {
                j.c("button");
                throw null;
            }
        } else if (i2 == 4 || i2 == 5) {
            AppCompatImageView appCompatImageView6 = this.f12326a;
            if (appCompatImageView6 != null) {
                appCompatImageView6.setVisibility(8);
            } else {
                j.c("button");
                throw null;
            }
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public PlayPauseControl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        j.b(context, "context");
        j.b(attributeSet, "attrs");
        b();
    }
}
