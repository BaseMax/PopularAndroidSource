package com.google.android.material.a;

import android.util.Property;
import android.view.ViewGroup;
import com.google.android.material.a;

public final class d extends Property<ViewGroup, Float> {
    public static final Property<ViewGroup, Float> CHILDREN_ALPHA = new d("childrenAlpha");

    private d(String str) {
        super(Float.class, str);
    }

    public final Float get(ViewGroup viewGroup) {
        Float f = (Float) viewGroup.getTag(a.f.mtrl_internal_children_alpha_tag);
        if (f != null) {
            return f;
        }
        return Float.valueOf(1.0f);
    }

    public final void set(ViewGroup viewGroup, Float f) {
        float floatValue = f.floatValue();
        viewGroup.setTag(a.f.mtrl_internal_children_alpha_tag, Float.valueOf(floatValue));
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup.getChildAt(i).setAlpha(floatValue);
        }
    }
}
