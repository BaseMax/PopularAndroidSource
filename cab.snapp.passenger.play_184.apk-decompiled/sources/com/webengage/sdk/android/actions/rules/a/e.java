package com.webengage.sdk.android.actions.rules.a;

import androidx.appcompat.widget.ActivityChooserView;
import java.util.List;

public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private String f5440a = null;

    /* renamed from: b  reason: collision with root package name */
    private int f5441b = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;

    public e(String str) {
        this.f5440a = str;
    }

    public abstract Object a(List<Object> list);

    public String a() {
        return this.f5440a;
    }
}
