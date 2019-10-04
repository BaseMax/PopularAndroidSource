package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import b.i.b.a.i;
import b.x.C;
import b.x.y;

public final class PreferenceScreen extends PreferenceGroup {
    public boolean W = true;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, i.a(context, C.preferenceScreenStyle, 16842891));
    }

    public void D() {
        if (l() == null && k() == null && N() != 0) {
            y.b c2 = q().c();
            if (c2 != null) {
                c2.a(this);
            }
        }
    }

    public boolean O() {
        return false;
    }

    public boolean Q() {
        return this.W;
    }
}
