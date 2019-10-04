package b.l.a;

import android.text.Spanned;
import android.widget.TextView;

/* compiled from: TextViewBindingAdapter */
public class f {
    public static void a(TextView textView, CharSequence charSequence) {
        CharSequence text = textView.getText();
        if (!(charSequence == text || (charSequence == null && text.length() == 0))) {
            if (charSequence instanceof Spanned) {
                if (charSequence.equals(text)) {
                    return;
                }
            } else if (!a(charSequence, text)) {
                return;
            }
            textView.setText(charSequence);
        }
    }

    public static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence == null) != (charSequence2 == null)) {
            return true;
        }
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        if (length != charSequence2.length()) {
            return true;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i2) != charSequence2.charAt(i2)) {
                return true;
            }
        }
        return false;
    }
}
