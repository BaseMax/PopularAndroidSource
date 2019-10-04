package c.c.a.d.b;

import android.text.InputFilter;
import android.widget.EditText;
import h.a.i;
import h.f.b.j;
import java.util.Arrays;

/* compiled from: EditTextExt.kt */
public final class e {
    public static final void a(EditText editText, int i2) {
        j.b(editText, "$this$setMaxLength");
        InputFilter[] filters = editText.getFilters();
        j.a((Object) filters, "filters");
        i.e(filters).add(new InputFilter.LengthFilter(10));
        InputFilter[] filters2 = editText.getFilters();
        j.a((Object) filters2, "filters");
        editText.setFilters((InputFilter[]) Arrays.copyOf(filters2, filters2.length));
    }
}
