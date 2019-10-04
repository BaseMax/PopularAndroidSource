package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.GravityCompat;
import cab.snapp.snappuikit.a;

public class SnappClearableEditText extends ConstraintLayout {

    /* renamed from: a  reason: collision with root package name */
    ConstraintLayout f1555a;

    /* renamed from: b  reason: collision with root package name */
    AppCompatEditText f1556b;
    AppCompatImageButton c;
    View d;
    AppCompatTextView e;
    private String f;
    private String g;
    private int h;
    private int i;
    private int j;
    private boolean k;

    public SnappClearableEditText(Context context) {
        super(context);
        a(context);
    }

    public SnappClearableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context.obtainStyledAttributes(attributeSet, a.h.SnappClearableEditText));
        a(context);
        a();
    }

    public SnappClearableEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context.obtainStyledAttributes(attributeSet, a.h.SnappClearableEditText, i2, 0));
        a(context);
        a();
    }

    private void a() {
        this.f1556b.setHint(this.f);
    }

    private void a(TypedArray typedArray) {
        this.f = typedArray.getString(a.h.SnappClearableEditText_Hint);
        this.g = typedArray.getString(a.h.SnappClearableEditText_Text);
        this.h = typedArray.getColor(a.h.SnappClearableEditText_HintColor, Color.parseColor(SnappEditText.DEFAULT_HINT_COLOR));
        this.i = typedArray.getColor(a.h.SnappClearableEditText_Color, Color.parseColor(SnappEditText.DEFAULT_TEXT_COLOR));
        this.j = typedArray.getColor(a.h.SnappClearableEditText_BackgroundColor, this.j);
        this.k = typedArray.getBoolean(a.h.SnappClearableEditText_SingleLine, false);
    }

    private void a(final Context context) {
        LayoutInflater.from(context).inflate(a.g.clearable_edit_text, this, true);
        this.f1555a = (ConstraintLayout) findViewById(a.f.clearable_edit_text_parent_layout);
        this.f1556b = (AppCompatEditText) findViewById(a.f.clearable_edit_text_main_edit_text);
        this.c = (AppCompatImageButton) findViewById(a.f.clearable_edit_text_main_image_button);
        this.d = findViewById(a.f.clearable_edit_text_underline_view);
        this.e = (AppCompatTextView) findViewById(a.f.clearable_edit_text_error_text_view);
        this.f1556b.setTextColor(context.getResources().getColor(a.b.carbon_grey));
        this.f1556b.setTextDirection(getTextDirection());
        this.f1556b.setLayoutDirection(getTextDirection());
        this.f1556b.setGravity(GravityCompat.START);
        this.f1556b.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public final void onFocusChange(View view, boolean z) {
                if (z) {
                    SnappClearableEditText.this.d.setBackgroundColor(context.getResources().getColor(a.b.carbon_grey));
                    ViewGroup.LayoutParams layoutParams = SnappClearableEditText.this.d.getLayoutParams();
                    layoutParams.height = (int) SnappClearableEditText.convertDpToPixel(2.0f, context);
                    SnappClearableEditText.this.d.setLayoutParams(layoutParams);
                    return;
                }
                SnappClearableEditText.this.d.setBackgroundColor(context.getResources().getColor(a.b.very_light_pink));
                ViewGroup.LayoutParams layoutParams2 = SnappClearableEditText.this.d.getLayoutParams();
                layoutParams2.height = (int) SnappClearableEditText.convertDpToPixel(1.0f, context);
                SnappClearableEditText.this.d.setLayoutParams(layoutParams2);
            }
        });
        this.f1556b.addTextChangedListener(new TextWatcher() {
            public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public final void afterTextChanged(Editable editable) {
                if (editable != null) {
                    if (editable.toString().length() == 0) {
                        SnappClearableEditText.this.c.setBackgroundResource(a.d.ic_empty_field_edit_text);
                    } else {
                        SnappClearableEditText.this.c.setBackgroundResource(a.d.ic_clear_edit_text);
                    }
                }
            }
        });
        this.f1556b.setHint(this.f);
        this.f1556b.setText(this.g);
        this.f1556b.setHintTextColor(this.h);
        this.f1556b.setTextColor(this.i);
        this.f1556b.setSingleLine(this.k);
        this.c.setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                SnappClearableEditText.this.f1556b.setText("");
            }
        });
    }

    public void setText(String str) {
        this.f1556b.setText(str);
    }

    public void setError(String str) {
        this.e.setVisibility(0);
        this.e.setText(str);
    }

    public void resetError() {
        this.e.setText("");
        this.e.setVisibility(8);
    }

    public static float convertDpToPixel(float f2, Context context) {
        return f2 * (((float) context.getResources().getDisplayMetrics().densityDpi) / 160.0f);
    }

    public AppCompatEditText getEditText() {
        return this.f1556b;
    }
}
