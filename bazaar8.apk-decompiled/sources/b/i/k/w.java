package b.i.k;

import android.view.View;
import b.i.k.z;

/* compiled from: ViewCompat */
class w extends z.b<Boolean> {
    public w(int i2, Class cls, int i3) {
        super(i2, cls, i3);
    }

    public Boolean a(View view) {
        return Boolean.valueOf(view.isScreenReaderFocusable());
    }
}
