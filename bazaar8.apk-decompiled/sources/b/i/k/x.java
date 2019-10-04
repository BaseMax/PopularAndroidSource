package b.i.k;

import android.view.View;
import b.i.k.z;

/* compiled from: ViewCompat */
class x extends z.b<CharSequence> {
    public x(int i2, Class cls, int i3, int i4) {
        super(i2, cls, i3, i4);
    }

    public CharSequence a(View view) {
        return view.getAccessibilityPaneTitle();
    }
}
