package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.content.res.ResourcesCompat;
import cab.snapp.snappuikit.a;

public class LoadingButton extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    AppCompatButton f1544a;

    /* renamed from: b  reason: collision with root package name */
    View f1545b;
    String c;
    boolean d = false;

    public LoadingButton(Context context) {
        super(context);
        a(context, null);
    }

    public LoadingButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public LoadingButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context, attributeSet);
    }

    private void a(Context context, AttributeSet attributeSet) {
        inflate(context, a.g.view_loadin_button, this);
        this.f1544a = (AppCompatButton) findViewById(a.f.btn);
        this.f1545b = findViewById(a.f.loading);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.h.LoadingButton);
            this.c = obtainStyledAttributes.getText(a.h.LoadingButton_android_text).toString();
            if (obtainStyledAttributes.hasValue(a.h.LoadingButton_lbTextFont)) {
                setTextFont(ResourcesCompat.getFont(getContext(), obtainStyledAttributes.getResourceId(a.h.LoadingButton_lbTextFont, a.e.iran_sans_mobile_bold)));
            }
            this.f1544a.setText(this.c);
            this.d = obtainStyledAttributes.getBoolean(a.h.LoadingButton_lbLoading, false);
            setLoading(this.d);
            obtainStyledAttributes.recycle();
        }
    }

    public void setTextFont(Typeface typeface) {
        this.f1544a.setTypeface(typeface);
    }

    public void setText(CharSequence charSequence) {
        if (charSequence != null) {
            this.f1544a.setText(charSequence.toString());
        }
    }

    public void setLoading(boolean z) {
        if (z) {
            this.f1545b.setVisibility(0);
            this.f1544a.setVisibility(8);
            return;
        }
        this.f1545b.setVisibility(8);
        this.f1544a.setVisibility(0);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f1544a.setEnabled(z);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.f1544a.setOnClickListener(onClickListener);
    }
}
