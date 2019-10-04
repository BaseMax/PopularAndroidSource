package b.b.g;

import android.util.Property;
import androidx.appcompat.widget.SwitchCompat;

/* compiled from: SwitchCompat */
class ja extends Property<SwitchCompat, Float> {
    public ja(Class cls, String str) {
        super(cls, str);
    }

    /* renamed from: a */
    public Float get(SwitchCompat switchCompat) {
        return Float.valueOf(switchCompat.z);
    }

    /* renamed from: a */
    public void set(SwitchCompat switchCompat, Float f2) {
        switchCompat.setThumbPosition(f2.floatValue());
    }
}
