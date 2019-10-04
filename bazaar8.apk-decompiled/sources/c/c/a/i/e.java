package c.c.a.i;

import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.widget.TextView;
import c.c.a.c.c.a;
import h.f.b.j;
import java.util.List;
import kotlin.Pair;

/* compiled from: TextViewExt.kt */
public final class e {
    public static final void a(TextView textView, String str, List<Pair<Integer, Integer>> list, List<? extends ClickableSpan> list2) {
        j.b(textView, "$this$partClickable");
        j.b(str, "value");
        j.b(list, "clickableAreaPair");
        j.b(list2, "clickListeners");
        if (list.size() == list2.size()) {
            SpannableString spannableString = new SpannableString(str);
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                Pair pair = list.get(i2);
                spannableString.setSpan(list2.get(i2), ((Number) pair.c()).intValue(), ((Number) pair.d()).intValue(), 18);
            }
            textView.setText(spannableString);
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            return;
        }
        a.f4699b.a((Throwable) new IllegalStateException("clickListener size must be equal with clickableAreaPair"));
    }
}
