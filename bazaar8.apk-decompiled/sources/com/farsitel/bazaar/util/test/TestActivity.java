package com.farsitel.bazaar.util.test;

import android.os.Bundle;
import b.o.a.C0285i;
import com.farsitel.bazaar.R;
import h.f.a.a;
import h.h;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TestActivity.kt */
public final class TestActivity extends C0285i {
    public boolean q;
    public final List<a<h>> r = new ArrayList();

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_test);
        this.q = true;
        for (a invoke : this.r) {
            invoke.invoke();
        }
    }
}
