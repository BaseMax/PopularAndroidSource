package cab.snapp.passenger.units.top_up_payment;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import cab.snapp.c.d;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.play.R;
import java.text.DecimalFormat;
import java.text.ParseException;

public final class a implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    private final String f1377a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f1378b;
    private DecimalFormat c = new DecimalFormat("#,###");
    private DecimalFormat d;
    private boolean e;
    private EditText f;
    private boolean g;
    private Number h;

    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public a(EditText editText, String str) {
        this.c.setDecimalSeparatorAlwaysShown(false);
        this.d = new DecimalFormat("#,###");
        this.e = false;
        this.f1377a = str;
        String str2 = this.f1377a;
        if (str2 != null && !str2.isEmpty()) {
            this.f1378b = true;
        }
        this.f = editText;
        this.f.setOnKeyListener(new View.OnKeyListener() {
            public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                return a.this.a(view, i, keyEvent);
            }
        });
    }

    /* access modifiers changed from: private */
    public /* synthetic */ boolean a(View view, int i, KeyEvent keyEvent) {
        this.g = i == 67;
        return false;
    }

    public final Number getPaymentAmount() {
        return this.h;
    }

    public final void afterTextChanged(Editable editable) {
        String str;
        String str2;
        try {
            this.f.removeTextChangedListener(this);
            if (this.f1377a != null && editable.toString().endsWith(this.f1377a.substring(0, this.f1377a.length() - 1))) {
                this.g = true;
            }
            int length = this.f.getText().length();
            if (this.g) {
                if (this.f1377a.length() > 1) {
                    String replace = editable.toString().replace(" ".concat(String.valueOf(this.f1377a.substring(0, this.f1377a.length() - 1))), "");
                    if (replace.length() > 1) {
                        str = replace.substring(0, replace.length() - 1);
                        this.g = false;
                    }
                } else {
                    String trim = editable.toString().trim();
                    if (trim.length() > 1) {
                        str = trim.substring(0, trim.length() - 1);
                        this.g = false;
                    }
                }
                str = "0";
                this.g = false;
            } else {
                str = editable.toString().replace(" " + this.f1377a, "");
            }
            int selectionStart = this.f.getSelectionStart();
            String replace2 = str.replace(String.valueOf(this.c.getDecimalFormatSymbols().getGroupingSeparator()), "");
            if (replace2.isEmpty()) {
                this.h = 0;
            } else {
                this.h = this.c.parse(replace2);
            }
            if (str.equals("0") || str.isEmpty()) {
                this.f.setText("");
                this.f.addTextChangedListener(this);
            }
            if (this.e) {
                if (this.f1377a.equals(this.f.getContext().getResources().getString(R.string.rial))) {
                    str2 = d.convertEngToPersianNumbers(this.c.format(this.h));
                } else {
                    str2 = this.c.format(this.h);
                }
            } else if (this.f1377a.equals(this.f.getContext().getResources().getString(R.string.rial))) {
                str2 = d.convertEngToPersianNumbers(this.c.format(this.h));
            } else {
                str2 = this.d.format(this.h);
            }
            if (this.f1378b) {
                str2 = str2 + " " + this.f1377a;
            }
            this.f.setText(g.changeNumbersBasedOnCurrentLocale(str2));
            int length2 = selectionStart + (this.f.getText().length() - length);
            if (length2 <= 0 || length2 > this.f.getText().length()) {
                this.f.setSelection(this.f.getText().length() - 1);
            } else {
                this.f.setSelection(length2);
            }
            this.f.addTextChangedListener(this);
        } catch (NumberFormatException | ParseException unused) {
        }
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.e = charSequence.toString().contains(String.valueOf(this.c.getDecimalFormatSymbols().getDecimalSeparator()));
    }
}
