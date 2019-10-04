package cab.snapp.snappuikit.ratingbar;

import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.core.view.GravityCompat;
import io.fabric.sdk.android.services.common.a;

class PartialView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private ImageView f1645a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f1646b;
    private int c = 0;
    private int d = 0;

    public PartialView(Context context, int i, int i2, int i3, int i4) {
        super(context);
        this.c = i2;
        this.d = i3;
        setTag(Integer.valueOf(i));
        setPadding(i4, i4, i4, i4);
        a();
    }

    public PartialView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public PartialView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        int i = this.c;
        int i2 = -2;
        if (i == 0) {
            i = -2;
        }
        int i3 = this.d;
        if (i3 != 0) {
            i2 = i3;
        }
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(i, i2);
        this.f1645a = new ImageView(getContext());
        this.f1645a.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(this.f1645a, layoutParams);
        this.f1646b = new ImageView(getContext());
        this.f1646b.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(this.f1646b, layoutParams);
        setEmpty();
    }

    public void setFilledDrawable(Drawable drawable) {
        if (drawable.getConstantState() != null) {
            this.f1645a.setImageDrawable(new ClipDrawable(drawable.getConstantState().newDrawable(), GravityCompat.START, 1));
        }
    }

    public void setEmptyDrawable(Drawable drawable) {
        if (drawable.getConstantState() != null) {
            this.f1646b.setImageDrawable(new ClipDrawable(drawable.getConstantState().newDrawable(), GravityCompat.END, 1));
        }
    }

    public void setFilled() {
        this.f1645a.setImageLevel(a.DEFAULT_TIMEOUT);
        this.f1646b.setImageLevel(0);
    }

    public void setPartialFilled(float f) {
        int i = (int) ((f % 1.0f) * 10000.0f);
        if (i == 0) {
            i = a.DEFAULT_TIMEOUT;
        }
        this.f1645a.setImageLevel(i);
        this.f1646b.setImageLevel(a.DEFAULT_TIMEOUT - i);
    }

    public void setEmpty() {
        this.f1645a.setImageLevel(0);
        this.f1646b.setImageLevel(a.DEFAULT_TIMEOUT);
    }

    public void setStarWidth(int i) {
        this.c = i;
        ViewGroup.LayoutParams layoutParams = this.f1645a.getLayoutParams();
        layoutParams.width = this.c;
        this.f1645a.setLayoutParams(layoutParams);
        this.f1646b.setLayoutParams(layoutParams);
    }

    public void setStarHeight(int i) {
        this.d = i;
        ViewGroup.LayoutParams layoutParams = this.f1645a.getLayoutParams();
        layoutParams.height = this.d;
        this.f1645a.setLayoutParams(layoutParams);
        this.f1646b.setLayoutParams(layoutParams);
    }
}
