package c.c.a.c.b;

import android.os.Bundle;
import android.os.Parcelable;
import h.f.b.j;
import java.io.Serializable;
import java.util.Map;

/* compiled from: MapExt.kt */
public final class g {
    public static final <V> Bundle a(Map<String, ? extends V> map) {
        j.b(map, "$this$toBundle");
        Bundle bundle = new Bundle();
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            Object value = next.getValue();
            if (value instanceof Boolean) {
                bundle.putBoolean(str, ((Boolean) value).booleanValue());
            } else if (value instanceof Character) {
                bundle.putChar(str, ((Character) value).charValue());
            } else if (value instanceof String) {
                bundle.putString(str, (String) value);
            } else if (value instanceof Float) {
                bundle.putFloat(str, ((Number) value).floatValue());
            } else if (value instanceof Double) {
                bundle.putDouble(str, ((Number) value).doubleValue());
            } else if (value instanceof Integer) {
                bundle.putInt(str, ((Number) value).intValue());
            } else if (value instanceof Parcelable) {
                bundle.putParcelable(str, (Parcelable) value);
            } else if (value instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) value);
            }
        }
        return bundle;
    }
}
