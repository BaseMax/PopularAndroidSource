package com.farsitel.bazaar.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import c.c.a.d.b.d;
import c.c.a.d.h;
import h.f.b.f;
import h.f.b.j;
import h.k.n;
import java.util.Arrays;

/* compiled from: GroupView.kt */
public final class GroupView extends View {

    /* renamed from: a  reason: collision with root package name */
    public int[] f12191a;

    /* renamed from: b  reason: collision with root package name */
    public int f12192b;

    /* renamed from: c  reason: collision with root package name */
    public String f12193c;

    public GroupView(Context context) {
        this(context, null, 0, 6, null);
    }

    public GroupView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ GroupView(Context context, AttributeSet attributeSet, int i2, int i3, f fVar) {
        this(context, (i3 & 2) != 0 ? null : attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    private final void setIds(String str) {
        if (!(str == null || str.length() == 0)) {
            this.f12192b = 0;
            for (String str2 : n.a((CharSequence) str, new char[]{','}, false, 0, 6, (Object) null)) {
                int i2 = this.f12192b;
                int[] iArr = this.f12191a;
                if (i2 >= iArr.length) {
                    int[] copyOf = Arrays.copyOf(iArr, i2 * 2);
                    j.a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
                    this.f12191a = copyOf;
                }
                int[] iArr2 = this.f12191a;
                int i3 = this.f12192b;
                Context context = getContext();
                j.a((Object) context, "context");
                iArr2[i3] = d.c(context, str2);
                this.f12192b++;
            }
        }
    }

    public final void a(int i2) {
        for (int i3 : this.f12191a) {
            if (i3 != 0) {
                ViewParent parent = getParent();
                View view = null;
                if (!(parent instanceof ViewGroup)) {
                    parent = null;
                }
                ViewGroup viewGroup = (ViewGroup) parent;
                if (viewGroup != null) {
                    view = viewGroup.findViewById(i3);
                }
                if (view != null) {
                    view.setVisibility(i2);
                }
            }
        }
    }

    public void setVisibility(int i2) {
        a(i2);
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public GroupView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        j.b(context, "context");
        this.f12191a = new int[8];
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, h.GroupView);
            j.a((Object) obtainStyledAttributes, "attrArray");
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == h.GroupView_referenceIds) {
                    this.f12193c = obtainStyledAttributes.getString(index);
                    setIds(this.f12193c);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }
}
