package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.GravityCompat;
import cab.snapp.snappuikit.a;
import cab.snapp.snappuikit.b.a;

public class SnappEditText extends LinearLayout implements View.OnClickListener {
    public static final String DEFAULT_HINT_COLOR = "#D6DADE";
    public static final String DEFAULT_TEXT_COLOR = "#344558";
    public static final int GRAVITY_CENTER = 0;
    public static final int GRAVITY_END = 2;
    public static final int GRAVITY_LEFT = 3;
    public static final int GRAVITY_RIGHT = 4;
    public static final int GRAVITY_START = 1;
    public static final int IME_OPTION_DONE = 0;
    public static final int IME_OPTION_NEXT = 1;
    public static final int IME_OPTION_NONE = 3;
    public static final int IME_OPTION_SEARCH = 2;
    public static final int INPUT_TYPE_EMAIL = 3;
    public static final int INPUT_TYPE_NUMBER = 4;
    public static final int INPUT_TYPE_PASSWORD = 1;
    public static final int INPUT_TYPE_PHONE = 2;
    public static final int INPUT_TYPE_TEXT = 0;
    public static final int INPUT_TYPE_TEXT_MULTILINE = 5;
    private int A;
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public AppCompatEditText f1561a;

    /* renamed from: b  reason: collision with root package name */
    private AppCompatTextView f1562b;
    private AppCompatTextView c;
    /* access modifiers changed from: private */
    public a d;
    private Drawable e;
    private String f;
    private String g;
    private int h;
    private int i;
    private int j = -1;
    private String k;
    private Drawable l;
    private String m;
    private String n;
    private String o;
    private boolean p = false;
    private int q = 0;
    private Drawable r;
    private Drawable s;
    private Drawable t;
    private Drawable u;
    private boolean v;
    private int w;
    private int x;
    private int y;
    private int z;

    public SnappEditText(Context context) {
        super(context);
        a(context);
    }

    public SnappEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context.obtainStyledAttributes(attributeSet, a.h.snappEditText));
        a(context);
    }

    public SnappEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context.obtainStyledAttributes(attributeSet, a.h.snappEditText, i2, 0));
        a(context);
    }

    public void addTextChangedListener(TextWatcher textWatcher) {
        this.f1561a.addTextChangedListener(textWatcher);
    }

    private static void a(TextView textView, Drawable drawable) {
        if (textView != null) {
            if (Build.VERSION.SDK_INT >= 17) {
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, drawable, null);
            } else {
                textView.setCompoundDrawablesWithIntrinsicBounds(drawable, null, null, null);
            }
        }
    }

    private static void b(TextView textView, Drawable drawable) {
        if (textView != null) {
            if (Build.VERSION.SDK_INT >= 17) {
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, null, null, null);
            } else {
                textView.setCompoundDrawablesWithIntrinsicBounds(null, null, drawable, null);
            }
        }
    }

    private static void a(TextView textView, String str) {
        if (str != null) {
            textView.setText(str);
        }
    }

    private void a() {
        this.f1561a.setFocusable(false);
        int i2 = this.j;
        if (i2 != -1) {
            this.f1561a.setBackgroundColor(i2);
        } else {
            this.f1561a.setBackgroundResource(a.d.shape_edittext_rounded_very_light_pink);
        }
        this.f1561a.setOnTouchListener(new View.OnTouchListener() {
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 0) {
                    return false;
                }
                SnappEditText snappEditText = SnappEditText.this;
                snappEditText.onClick(snappEditText.f1561a);
                return true;
            }
        });
    }

    private void a(TypedArray typedArray) {
        this.e = typedArray.getDrawable(a.h.snappEditText_etTextIcon);
        this.u = typedArray.getDrawable(a.h.snappEditText_etTextIconActivated);
        this.f = typedArray.getString(a.h.snappEditText_etHint);
        this.g = typedArray.getString(a.h.snappEditText_etText);
        this.h = typedArray.getColor(a.h.snappEditText_etHintColor, Color.parseColor(DEFAULT_HINT_COLOR));
        this.i = typedArray.getColor(a.h.snappEditText_etColor, Color.parseColor(DEFAULT_TEXT_COLOR));
        this.j = typedArray.getColor(a.h.snappEditText_etBackgroundColor, this.j);
        this.k = typedArray.getString(a.h.snappEditText_etBtnActionText);
        this.l = typedArray.getDrawable(a.h.snappEditText_etBtnActionIcon);
        this.m = typedArray.getString(a.h.snappEditText_etInformationTextNormal);
        this.r = typedArray.getDrawable(a.h.snappEditText_etInformationTextNormalIcon);
        this.n = typedArray.getString(a.h.snappEditText_etInformationTextError);
        this.s = typedArray.getDrawable(a.h.snappEditText_etInformationTextErrorIcon);
        this.o = typedArray.getString(a.h.snappEditText_etInformationTextActivated);
        this.t = typedArray.getDrawable(a.h.snappEditText_etInformationTextActivatedIcon);
        this.p = typedArray.getBoolean(a.h.snappEditText_etClickableMode, false);
        this.v = typedArray.getBoolean(a.h.snappEditText_etSingleLine, false);
        this.w = typedArray.getInt(a.h.snappEditText_etMaxLine, 100);
        this.x = typedArray.getInt(a.h.snappEditText_etMaxLength, 1000000);
        this.y = typedArray.getInt(a.h.snappEditText_etGravity, 0);
        this.z = typedArray.getInt(a.h.snappEditText_etImeOption, 0);
        this.A = typedArray.getInt(a.h.snappEditText_etInputType, 0);
        typedArray.recycle();
    }

    private void a(Context context) {
        View inflate = inflate(context, a.g.edittext_layout, this);
        this.f1561a = (AppCompatEditText) inflate.findViewById(a.f.edittext_layout_edittext_inputData);
        this.f1562b = (AppCompatTextView) inflate.findViewById(a.f.edittext_layout_textview_info);
        this.c = (AppCompatTextView) inflate.findViewById(a.f.edittext_layout_button_action);
        b();
    }

    private void b() {
        this.f1561a.setSingleLine(this.v);
        this.f1561a.setMaxLines(this.w);
        this.f1561a.setFilters(new InputFilter[]{new InputFilter.LengthFilter(this.x)});
        int i2 = this.z;
        if (i2 == 1) {
            this.f1561a.setImeOptions(5);
        } else if (i2 == 2) {
            this.f1561a.setImeOptions(3);
        } else if (i2 != 3) {
            this.f1561a.setImeOptions(6);
        } else {
            this.f1561a.setImeOptions(1);
        }
        int i3 = this.A;
        if (i3 == 1) {
            this.f1561a.setInputType(129);
        } else if (i3 == 2) {
            this.f1561a.setInputType(3);
        } else if (i3 == 3) {
            this.f1561a.setInputType(33);
        } else if (i3 == 4) {
            this.f1561a.setInputType(2);
        } else if (i3 != 5) {
            this.f1561a.setInputType(1);
        } else {
            this.f1561a.setInputType(131073);
        }
        int i4 = this.y;
        if (i4 == 1) {
            this.f1561a.setGravity(GravityCompat.START);
        } else if (i4 == 2) {
            this.f1561a.setGravity(GravityCompat.END);
        } else if (i4 == 3) {
            this.f1561a.setGravity(3);
        } else if (i4 != 4) {
            this.f1561a.setGravity(17);
        } else {
            this.f1561a.setGravity(5);
        }
        a((TextView) this.f1561a, this.e);
        String str = this.f;
        if (str != null) {
            this.f1561a.setHint(str);
        }
        a((TextView) this.f1561a, this.g);
        this.f1561a.setHintTextColor(this.h);
        this.f1561a.setTextColor(this.i);
        if (this.p) {
            a();
        }
        a((TextView) this.c, this.k);
        showInActive();
        this.c.setOnClickListener(new View.OnClickListener() {
            public final void onClick(View view) {
                if (SnappEditText.this.d != null) {
                    SnappEditText.this.d.onActionButtonCLicked();
                }
            }
        });
        this.f1561a.setOnFocusChangeListener(new View.OnFocusChangeListener() {
            public final void onFocusChange(View view, boolean z) {
                SnappEditText.this.setEditTextIconActivated(z);
            }
        });
    }

    public void showInActive() {
        this.q = 0;
        int i2 = this.j;
        if (i2 != -1) {
            this.f1561a.setBackgroundColor(i2);
        } else {
            this.f1561a.setBackgroundResource(a.d.shape_edittext_rounded_very_light_pink);
        }
        if (this.m == null) {
            this.m = "";
        }
        a((TextView) this.f1562b, this.m);
        this.f1562b.setTextColor(getContext().getResources().getColor(a.b.brown_grey));
        Drawable drawable = this.t;
        if (drawable != null) {
            drawable.setColorFilter(getResources().getColor(a.b.brown_grey), PorterDuff.Mode.SRC_IN);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f1562b.setCompoundDrawablesRelativeWithIntrinsicBounds(this.r, (Drawable) null, (Drawable) null, (Drawable) null);
            } else {
                this.f1562b.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.r, (Drawable) null);
            }
        }
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            drawable2.setColorFilter(getResources().getColor(a.b.brown_grey), PorterDuff.Mode.SRC_IN);
            b(this.c, this.l);
        }
        Drawable drawable3 = this.e;
        if (drawable3 != null) {
            drawable3.setColorFilter(getResources().getColor(a.b.brown_grey), PorterDuff.Mode.SRC_IN);
            a((TextView) this.f1561a, this.e);
        }
    }

    public void showActive() {
        this.q = 3;
        int i2 = this.j;
        if (i2 != -1) {
            this.f1561a.setBackgroundColor(i2);
        } else {
            this.f1561a.setBackgroundResource(a.d.shape_edittext_rounded_dark);
        }
        if (this.m == null) {
            this.m = "";
        }
        a((TextView) this.f1562b, this.m);
        this.f1562b.setTextColor(getContext().getResources().getColor(a.b.color_primary));
        Drawable drawable = this.t;
        if (drawable != null) {
            drawable.setColorFilter(getResources().getColor(a.b.color_primary), PorterDuff.Mode.SRC_IN);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f1562b.setCompoundDrawablesRelativeWithIntrinsicBounds(this.r, (Drawable) null, (Drawable) null, (Drawable) null);
            } else {
                this.f1562b.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.r, (Drawable) null);
            }
        }
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            drawable2.setColorFilter(getResources().getColor(a.b.color_primary), PorterDuff.Mode.SRC_IN);
            b(this.c, this.l);
        }
        Drawable drawable3 = this.e;
        if (drawable3 != null) {
            drawable3.setColorFilter(getResources().getColor(a.b.color_primary), PorterDuff.Mode.SRC_IN);
            a((TextView) this.f1561a, this.e);
        }
    }

    public void showError() {
        this.q = 1;
        int i2 = this.j;
        if (i2 != -1) {
            this.f1561a.setBackgroundColor(i2);
        } else {
            this.f1561a.setBackgroundResource(a.d.shape_edittext_rounded_red);
        }
        if (this.n == null) {
            this.m = "";
        }
        a((TextView) this.f1562b, this.n);
        this.f1562b.setTextColor(getContext().getResources().getColor(a.b.cherry));
        Drawable drawable = this.t;
        if (drawable != null) {
            drawable.setColorFilter(getResources().getColor(a.b.cherry), PorterDuff.Mode.SRC_IN);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f1562b.setCompoundDrawablesRelativeWithIntrinsicBounds(this.s, (Drawable) null, (Drawable) null, (Drawable) null);
            } else {
                this.f1562b.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.s, (Drawable) null);
            }
        }
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            drawable2.setColorFilter(getResources().getColor(a.b.cherry), PorterDuff.Mode.SRC_IN);
            b(this.c, this.l);
        }
        Drawable drawable3 = this.e;
        if (drawable3 != null) {
            drawable3.setColorFilter(getResources().getColor(a.b.cherry), PorterDuff.Mode.SRC_IN);
            a((TextView) this.f1561a, this.e);
        }
    }

    public void showError(String str) {
        this.n = str;
        showError();
    }

    public void showApproved() {
        this.q = 2;
        int i2 = this.j;
        if (i2 != -1) {
            this.f1561a.setBackgroundColor(i2);
        } else {
            this.f1561a.setBackgroundResource(a.d.shape_edittext_rounded_green_blue_two);
        }
        if (this.o == null) {
            this.o = "";
        }
        a((TextView) this.f1562b, this.o);
        this.f1562b.setTextColor(getContext().getResources().getColor(a.b.green_blue_two));
        Drawable drawable = this.t;
        if (drawable != null) {
            drawable.setColorFilter(getResources().getColor(a.b.green_blue_two), PorterDuff.Mode.SRC_IN);
            if (Build.VERSION.SDK_INT >= 17) {
                this.f1562b.setCompoundDrawablesRelativeWithIntrinsicBounds(this.t, (Drawable) null, (Drawable) null, (Drawable) null);
            } else {
                this.f1562b.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, this.t, (Drawable) null);
            }
        }
        Drawable drawable2 = this.l;
        if (drawable2 != null) {
            drawable2.setColorFilter(getResources().getColor(a.b.green_blue_two), PorterDuff.Mode.SRC_IN);
            b(this.c, this.l);
        }
        Drawable drawable3 = this.e;
        if (drawable3 != null) {
            drawable3.setColorFilter(getResources().getColor(a.b.green_blue_two), PorterDuff.Mode.SRC_IN);
            a((TextView) this.f1561a, this.e);
        }
    }

    public void setEditTextIconActivated(boolean z2) {
        int i2 = this.q;
        if (i2 == 0 || i2 == 3) {
            if (z2) {
                showActive();
                return;
            }
            showInActive();
        }
    }

    public void showActionButton() {
        this.c.setVisibility(0);
    }

    public void hideActionButton() {
        this.c.setVisibility(8);
    }

    public void setText(String str) {
        a((TextView) this.f1561a, str);
    }

    public void setEnabled(boolean z2) {
        this.f1561a.setEnabled(z2);
    }

    public void setSnappEditTextClickListener(cab.snapp.snappuikit.b.a aVar) {
        this.d = aVar;
        if (aVar.editTextClickable()) {
            this.p = true;
            a();
        }
    }

    public cab.snapp.snappuikit.b.a getSnappEditTextClickListener() {
        return this.d;
    }

    public String getText() {
        return this.f1561a.getText().toString();
    }

    public boolean isEnabled() {
        return this.f1561a.isEnabled();
    }

    public int length() {
        return this.f1561a.length();
    }

    public EditText getEditTextView() {
        return this.f1561a;
    }

    public TextView getBtnActionView() {
        return this.c;
    }

    public TextView getInfoTextView() {
        return this.f1562b;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void onClick(View view) {
        cab.snapp.snappuikit.b.a aVar = this.d;
        if (aVar != null) {
            aVar.onEditTextClicked();
        }
    }
}
