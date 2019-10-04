package c.c.a.d.b;

import android.view.View;
import android.widget.EditText;
import h.f.a.b;
import h.f.b.j;

/* compiled from: ButtonExt.kt */
public final class c {
    public static final void a(View view, EditText editText, b<? super CharSequence, Boolean> bVar) {
        j.b(view, "$this$enableAfterTextChange");
        j.b(editText, "editText");
        j.b(bVar, "condition");
        editText.addTextChangedListener(new b(view, bVar));
    }
}
