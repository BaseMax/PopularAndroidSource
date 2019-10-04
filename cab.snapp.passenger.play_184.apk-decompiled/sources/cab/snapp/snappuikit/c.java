package cab.snapp.snappuikit;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.Toolbar;
import cab.snapp.snappuikit.a;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final TextView f1629a;

    /* renamed from: b  reason: collision with root package name */
    private final LinearLayout f1630b;
    private final AppCompatImageView c;
    private Context d;
    private Toolbar e;

    public c(View view) {
        this.d = view.getContext();
        this.e = (Toolbar) view.findViewById(a.f.toolbar);
        this.f1629a = (TextView) view.findViewById(a.f.toolbar_title);
        this.f1630b = (LinearLayout) view.findViewById(a.f.toolbar_back_layout);
        this.c = (AppCompatImageView) view.findViewById(a.f.toolbar_back_iv);
    }

    public final void setTitle(String str) {
        this.f1629a.setText(str);
        Toolbar toolbar = this.e;
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (textView.getText().equals(toolbar.getTitle())) {
                    textView.setTypeface(Typeface.createFromAsset(toolbar.getContext().getAssets(), "fonts/iran_sans_mobile_medium.ttf"));
                    return;
                }
            }
        }
    }

    public final void setTitle(int i) {
        this.f1629a.setText(this.d.getString(i));
    }

    public final void setMenu(int i, Toolbar.OnMenuItemClickListener onMenuItemClickListener) {
        this.e.inflateMenu(i);
        this.e.setOnMenuItemClickListener(onMenuItemClickListener);
    }

    public final void setBackButton(int i, View.OnClickListener onClickListener) {
        this.c.setImageResource(i);
        this.f1630b.setOnClickListener(onClickListener);
        this.f1630b.setVisibility(0);
    }

    public final void setBackButton(int i, View.OnClickListener onClickListener, int i2) {
        this.c.setImageResource(i);
        this.f1630b.setContentDescription(this.d.getString(i2));
        this.f1630b.setOnClickListener(onClickListener);
        this.f1630b.setVisibility(0);
    }

    public final void setOnTitleClickListener(View.OnClickListener onClickListener) {
        this.f1629a.setOnClickListener(onClickListener);
    }

    public final Toolbar getToolbar() {
        return this.e;
    }
}
