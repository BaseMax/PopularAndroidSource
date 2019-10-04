package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.res.ResourcesCompat;
import cab.snapp.snappuikit.a;

public class StartDrawableButton extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    AppCompatTextView f1622a;

    /* renamed from: b  reason: collision with root package name */
    AppCompatImageView f1623b;
    View c;

    public StartDrawableButton(Context context) {
        super(context);
        a(context, null);
    }

    public StartDrawableButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public StartDrawableButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        inflate(context, a.g.view_start_drawable_button, this);
        this.f1622a = (AppCompatTextView) findViewById(a.f.tv_title);
        this.f1623b = (AppCompatImageView) findViewById(a.f.iv_start_icon);
        this.c = findViewById(a.f.loading);
        setBackgroundResource(a.d.selector_start_drawable);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.StartDrawableButton);
            this.f1622a.setText(obtainStyledAttributes.getText(a.h.StartDrawableButton_android_text));
            this.f1623b.setImageDrawable(obtainStyledAttributes.getDrawable(a.h.StartDrawableButton_android_drawableStart));
            if (obtainStyledAttributes.hasValue(a.h.StartDrawableButton_sdbTextFont)) {
                setTextFont(ResourcesCompat.getFont(getContext(), obtainStyledAttributes.getResourceId(a.h.StartDrawableButton_sdbTextFont, a.e.iran_sans_mobile_medium)));
            }
            obtainStyledAttributes.recycle();
        }
    }

    public void setTextFont(Typeface typeface) {
        this.f1622a.setTypeface(typeface);
    }

    public void setText(CharSequence charSequence) {
        this.f1622a.setText(charSequence);
    }

    public void setLoading(boolean z) {
        if (z) {
            this.f1622a.setVisibility(4);
            this.f1623b.setVisibility(4);
            this.c.setVisibility(0);
            return;
        }
        this.f1622a.setVisibility(0);
        this.f1623b.setVisibility(0);
        this.c.setVisibility(8);
    }
}
