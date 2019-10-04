package com.farsitel.bazaar.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import b.i.b.a;
import c.c.a.d.a.b;
import c.c.a.d.b.i;
import c.c.a.d.h;
import com.farsitel.bazaar.R;
import com.google.android.material.button.MaterialButton;
import h.f.b.f;
import h.f.b.j;

/* compiled from: LoadingButton.kt */
public final class LoadingButton extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    public MaterialButton f12384a;

    /* renamed from: b  reason: collision with root package name */
    public ProgressBar f12385b;

    /* renamed from: c  reason: collision with root package name */
    public final float f12386c;

    /* renamed from: d  reason: collision with root package name */
    public String f12387d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f12388e;

    /* renamed from: f  reason: collision with root package name */
    public Drawable f12389f;

    /* renamed from: g  reason: collision with root package name */
    public float f12390g;

    /* renamed from: h  reason: collision with root package name */
    public int f12391h;

    public LoadingButton(Context context) {
        this(context, null, 0, 6, null);
    }

    public LoadingButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ LoadingButton(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    private final void setButtonText(boolean z) {
        MaterialButton materialButton = this.f12384a;
        String str = null;
        if (materialButton != null) {
            if (!z) {
                str = this.f12387d;
            }
            materialButton.setText(str);
            return;
        }
        j.c("button");
        throw null;
    }

    public final void a(AttributeSet attributeSet) {
        if (attributeSet == null) {
            a(this, 0, null, (int) this.f12386c, 3, null);
        } else {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, h.LoadingButton);
            a(obtainStyledAttributes.getResourceId(3, R.color.c_text_caption_info), attributeSet, (int) obtainStyledAttributes.getDimension(4, this.f12386c));
            String string = obtainStyledAttributes.getString(6);
            if (string == null) {
                string = "";
            }
            setText(string);
            setShowLoading(obtainStyledAttributes.getBoolean(5, false));
            setButtonIcon(obtainStyledAttributes.getDrawable(0));
            setButtonIconPadding(obtainStyledAttributes.getDimension(1, 0.0f));
            setButtonIconTintRef(obtainStyledAttributes.getResourceId(2, R.color.video_details_primary_color));
            obtainStyledAttributes.recycle();
        }
        setPadding(0, 0, 0, 0);
    }

    public final Drawable getButtonIcon() {
        return this.f12389f;
    }

    public final float getButtonIconPadding() {
        return this.f12390g;
    }

    public final int getButtonIconTintRef() {
        return this.f12391h;
    }

    public final boolean getShowLoading() {
        return this.f12388e;
    }

    public final String getText() {
        return this.f12387d;
    }

    public final void setButtonIcon(Drawable drawable) {
        this.f12389f = drawable;
        setButtonIcon(this.f12388e);
    }

    public final void setButtonIconPadding(float f2) {
        this.f12390g = f2;
        MaterialButton materialButton = this.f12384a;
        if (materialButton != null) {
            materialButton.setIconPadding((int) f2);
        } else {
            j.c("button");
            throw null;
        }
    }

    public final void setButtonIconTintRef(int i2) {
        this.f12391h = i2;
        MaterialButton materialButton = this.f12384a;
        if (materialButton != null) {
            materialButton.setIconTintResource(i2);
        } else {
            j.c("button");
            throw null;
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        MaterialButton materialButton = this.f12384a;
        if (materialButton != null) {
            materialButton.setEnabled(z);
            ProgressBar progressBar = this.f12385b;
            if (progressBar != null) {
                progressBar.setEnabled(z);
            } else {
                j.c("progressBar");
                throw null;
            }
        } else {
            j.c("button");
            throw null;
        }
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        MaterialButton materialButton = this.f12384a;
        if (materialButton != null) {
            materialButton.setOnClickListener(onClickListener);
        } else {
            j.c("button");
            throw null;
        }
    }

    public final void setShowLoading(boolean z) {
        this.f12388e = z;
        MaterialButton materialButton = this.f12384a;
        if (materialButton != null) {
            materialButton.setEnabled(!z);
            ProgressBar progressBar = this.f12385b;
            if (progressBar != null) {
                progressBar.setEnabled(!z);
                setEnabled(!z);
                b.a aVar = b.f4745a;
                ProgressBar progressBar2 = this.f12385b;
                if (progressBar2 != null) {
                    aVar.a((View) progressBar2, Boolean.valueOf(z));
                    setButtonText(z);
                    setButtonIcon(z);
                    return;
                }
                j.c("progressBar");
                throw null;
            }
            j.c("progressBar");
            throw null;
        }
        j.c("button");
        throw null;
    }

    public final void setText(String str) {
        j.b(str, "value");
        this.f12387d = str;
        setButtonText(this.f12388e);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public LoadingButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.b(context, "context");
        this.f12386c = (float) i.a(32);
        this.f12387d = "";
        a(attributeSet);
    }

    private final void setButtonIcon(boolean z) {
        MaterialButton materialButton = this.f12384a;
        Drawable drawable = null;
        if (materialButton != null) {
            if (!z) {
                drawable = this.f12389f;
            }
            materialButton.setIcon(drawable);
            return;
        }
        j.c("button");
        throw null;
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    @TargetApi(21)
    public LoadingButton(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        j.b(context, "context");
        this.f12386c = (float) i.a(32);
        this.f12387d = "";
        a(attributeSet);
    }

    public static /* synthetic */ void a(LoadingButton loadingButton, int i2, AttributeSet attributeSet, int i3, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            i2 = R.color.c_text_caption_info;
        }
        if ((i4 & 2) != 0) {
            attributeSet = null;
        }
        loadingButton.a(i2, attributeSet, i3);
    }

    public final void a(int i2, AttributeSet attributeSet, int i3) {
        MaterialButton materialButton = new MaterialButton(getContext(), attributeSet);
        materialButton.setId(R.id.loading_button_button);
        materialButton.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        materialButton.setGravity(17);
        materialButton.setClickable(false);
        this.f12384a = materialButton;
        ProgressBar progressBar = new ProgressBar(getContext(), attributeSet);
        progressBar.setId(R.id.loading_button_progressbar);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
        layoutParams.gravity = 17;
        progressBar.setLayoutParams(layoutParams);
        progressBar.getIndeterminateDrawable().setColorFilter(a.a(progressBar.getContext(), i2), PorterDuff.Mode.MULTIPLY);
        progressBar.setPadding(0, 0, 0, 0);
        this.f12385b = progressBar;
        removeAllViews();
        MaterialButton materialButton2 = this.f12384a;
        if (materialButton2 != null) {
            addView(materialButton2);
            ProgressBar progressBar2 = this.f12385b;
            if (progressBar2 != null) {
                addView(progressBar2);
            } else {
                j.c("progressBar");
                throw null;
            }
        } else {
            j.c("button");
            throw null;
        }
    }
}
