package cab.snapp.snappuikit;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.text.method.DigitsKeyListener;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.text.TextUtilsCompat;
import cab.snapp.c.j;
import cab.snapp.snappuikit.MoneyAmountEditText;
import cab.snapp.snappuikit.a;
import cab.snapp.snappuikit.c.b;
import java.util.ArrayList;

public class MoneyAmountEditText extends AppCompatEditText {

    /* renamed from: a  reason: collision with root package name */
    String f1546a = null;

    /* renamed from: b  reason: collision with root package name */
    int f1547b = 0;
    boolean c = false;
    a d;
    Rect e = new Rect();
    Rect f = new Rect();
    Paint g;
    int h = 0;
    private final TextWatcher i = new TextWatcher() {

        /* renamed from: a  reason: collision with root package name */
        int f1548a = 0;

        /* renamed from: b  reason: collision with root package name */
        int f1549b = -1;
        int c = -1;
        String d = "";

        private synchronized void a(Runnable runnable) {
            MoneyAmountEditText.this.removeTextChangedListener(this);
            runnable.run();
            MoneyAmountEditText.this.addTextChangedListener(this);
        }

        public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            $$Lambda$MoneyAmountEditText$1$CpHm6o3FoBvp_SEmTb_Iydw7QsU r0 = new Runnable(i, i2, i3, charSequence) {
                private final /* synthetic */ int f$1;
                private final /* synthetic */ int f$2;
                private final /* synthetic */ int f$3;
                private final /* synthetic */ CharSequence f$4;

                {
                    this.f$1 = r2;
                    this.f$2 = r3;
                    this.f$3 = r4;
                    this.f$4 = r5;
                }

                public final void run() {
                    MoneyAmountEditText.AnonymousClass1.this.a(this.f$1, this.f$2, this.f$3, this.f$4);
                }
            };
            a((Runnable) r0);
        }

        /* access modifiers changed from: private */
        public /* synthetic */ void a(int i, int i2, int i3, CharSequence charSequence) {
            this.d = null;
            this.f1549b = -1;
            if (i2 == 1 && i3 == 0 && !b.isNumeral(charSequence.charAt(i))) {
                i--;
                this.f1549b = i;
            }
            this.f1548a = b.getNumeralsCountBeforePosition(charSequence, i);
        }

        public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            a((Runnable) new Runnable(i3) {
                private final /* synthetic */ int f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    MoneyAmountEditText.AnonymousClass1.this.a(this.f$1);
                }
            });
        }

        /* access modifiers changed from: private */
        public /* synthetic */ void a(int i) {
            if (MoneyAmountEditText.this.getText() != null) {
                this.d = MoneyAmountEditText.this.getText().toString();
                int i2 = this.f1549b;
                if (i2 >= 0 && i2 < this.d.length()) {
                    this.d = b.replaceCharAt(this.d, ' ', this.f1549b);
                }
                long amount = MoneyAmountEditText.this.getAmount(this.d);
                if (amount > 0) {
                    this.d = MoneyAmountEditText.this.getFormattedText(amount);
                } else {
                    this.d = "";
                }
                this.c = b.getCursorPositionForNumeralAt(this.d, this.f1548a + i);
            }
        }

        public final void afterTextChanged(Editable editable) {
            a((Runnable) new Runnable(editable) {
                private final /* synthetic */ Editable f$1;

                {
                    this.f$1 = r2;
                }

                public final void run() {
                    MoneyAmountEditText.AnonymousClass1.this.a(this.f$1);
                }
            });
        }

        /* access modifiers changed from: private */
        public /* synthetic */ void a(Editable editable) {
            if (this.d != null) {
                InputFilter[] filters = editable.getFilters();
                if (filters != null) {
                    ArrayList arrayList = new ArrayList();
                    for (InputFilter inputFilter : filters) {
                        if (!(inputFilter instanceof DigitsKeyListener)) {
                            arrayList.add(inputFilter);
                        }
                    }
                    editable.setFilters((InputFilter[]) arrayList.toArray(new InputFilter[arrayList.size()]));
                }
                editable.replace(0, editable.length(), this.d);
                if (filters != null) {
                    editable.setFilters(filters);
                }
                int i = this.c;
                if (i >= 0 && i < editable.length()) {
                    MoneyAmountEditText.this.setSelection(this.c);
                }
                MoneyAmountEditText.this.b();
            }
        }
    };
    private String j = "";

    public interface a {
        void onMoneyAmountChanged(long j);
    }

    public void setMoneyAmountChangedListener(a aVar) {
        this.d = aVar;
    }

    public MoneyAmountEditText(Context context) {
        super(context);
        a((AttributeSet) null);
    }

    public MoneyAmountEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public MoneyAmountEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, a.h.MoneyAmountEditText);
        this.f1546a = obtainStyledAttributes.getString(a.h.MoneyAmountEditText_maet_currency);
        if (this.f1546a == null) {
            this.f1546a = "ریال";
        }
        this.f1547b = obtainStyledAttributes.getDimensionPixelSize(a.h.MoneyAmountEditText_maet_currency_padding, spToPx(8.0f));
        boolean z = true;
        if (obtainStyledAttributes.getInt(a.h.MoneyAmountEditText_maet_center_based_on, 0) != 1) {
            z = false;
        }
        this.c = z;
        obtainStyledAttributes.recycle();
        addTextChangedListener(this.i);
        setInputType(2);
        setLayoutDirection(0);
        setTextDirection(0);
        setTextAlignment(4);
        setGravity(17);
        setBackground(null);
    }

    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        super.setText(charSequence, bufferType);
        b();
    }

    public String getFormattedText(long j2) {
        return j.formatLong(Math.max(0, j2));
    }

    public void setAmount(long j2) {
        setText(getFormattedText(j2));
    }

    public void changeAmountBy(long j2) {
        setAmount(getAmount() + j2);
    }

    public long getAmount() {
        if (getText() != null) {
            return getAmount(getText().toString());
        }
        return 0;
    }

    public long getAmount(String str) {
        if (str == null) {
            return 0;
        }
        String convertNumeralsToEnglish = b.convertNumeralsToEnglish(b.stripNonNumerals(str));
        if (convertNumeralsToEnglish == null) {
            return 0;
        }
        try {
            return Math.max(0, Long.parseLong(convertNumeralsToEnglish));
        } catch (Exception unused) {
            return 0;
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        if (getText() == null || getText().length() <= 0 || this.f1546a == null) {
            if (getHint() != null && getHint().length() > 0) {
                this.j = getHint().toString();
                setHint("");
            }
            this.g = getPaint();
            Paint paint = this.g;
            String str = this.j;
            paint.getTextBounds(str, 0, str.length(), this.e);
            int measuredWidth = getMeasuredWidth();
            int measuredHeight = getMeasuredHeight();
            int width = this.e.width();
            setPadding(0, 0, 0, 0);
            this.h = this.g.getColor();
            this.g.setColor(getCurrentHintTextColor());
            canvas.save();
            canvas.translate(((float) getScrollX()) + (((float) (measuredWidth - width)) / 2.0f), ((float) measuredHeight) / 2.0f);
            canvas.drawText(this.j, 0.0f, 0.0f, this.g);
            canvas.restore();
            this.g.setColor(this.h);
            super.onDraw(canvas);
            return;
        }
        boolean a2 = a();
        if (!this.c || getText() == null || getText().length() <= 0 || this.f1546a == null) {
            i2 = 0;
        } else {
            this.g = getPaint();
            Paint paint2 = this.g;
            String str2 = this.f1546a;
            paint2.getTextBounds(str2, 0, str2.length(), this.f);
            i2 = this.f.width() + this.f1547b;
            if (!a()) {
                i2 = -i2;
            }
        }
        int abs = Math.abs(i2);
        if (a2) {
            setPadding(abs, 0, 0, 0);
        } else {
            setPadding(0, 0, abs, 0);
        }
        this.g = getPaint();
        this.g.getTextBounds(getText().toString(), 0, getText().length(), this.e);
        int measuredWidth2 = getMeasuredWidth();
        int measuredHeight2 = getMeasuredHeight();
        int width2 = this.e.width();
        Paint paint3 = this.g;
        String str3 = this.f1546a;
        paint3.getTextBounds(str3, 0, str3.length(), this.f);
        int width3 = this.f.width();
        int height = this.f.height();
        canvas.save();
        super.onDraw(canvas);
        canvas.save();
        canvas.translate(((float) getScrollX()) + (a2 ? ((((float) (measuredWidth2 - width2)) / 2.0f) - ((float) (width3 + this.f1547b))) + (((float) abs) / 2.0f) : ((((float) (measuredWidth2 + width2)) / 2.0f) + ((float) this.f1547b)) - (((float) abs) / 2.0f)), (((float) measuredHeight2) / 2.0f) + (((float) height) / 3.0f));
        canvas.drawText(this.f1546a, 0.0f, 0.0f, this.g);
        canvas.restore();
        canvas.restore();
    }

    private boolean a() {
        return TextUtilsCompat.getLayoutDirectionFromLocale(getTextLocale()) == 1;
    }

    public int spToPx(float f2) {
        return (int) TypedValue.applyDimension(2, f2, getContext().getResources().getDisplayMetrics());
    }

    /* access modifiers changed from: private */
    public void b() {
        a aVar = this.d;
        if (aVar != null) {
            aVar.onMoneyAmountChanged(getAmount());
        }
    }
}
