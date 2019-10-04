package b.l.a;

import android.widget.CompoundButton;

/* compiled from: CompoundButtonBindingAdapter */
public class a {
    public static void a(CompoundButton compoundButton, boolean z) {
        if (compoundButton.isChecked() != z) {
            compoundButton.setChecked(z);
        }
    }
}
