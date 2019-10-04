package b.g.b;

import a.a.a.b;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import b.g.a.a.i;
import java.util.Arrays;

/* compiled from: ConstraintHelper */
public abstract class a extends View {

    /* renamed from: a  reason: collision with root package name */
    public int[] f2469a = new int[32];

    /* renamed from: b  reason: collision with root package name */
    public int f2470b = 0;

    /* renamed from: c  reason: collision with root package name */
    public Context f2471c;

    /* renamed from: d  reason: collision with root package name */
    public i f2472d = null;

    /* renamed from: e  reason: collision with root package name */
    public boolean f2473e = false;

    /* renamed from: f  reason: collision with root package name */
    public String f2474f;

    public a(Context context) {
        super(context);
        this.f2471c = context;
        a((AttributeSet) null);
    }

    private void setIds(String str) {
        if (str != null) {
            int i2 = 0;
            while (true) {
                int indexOf = str.indexOf(44, i2);
                if (indexOf == -1) {
                    a(str.substring(i2));
                    return;
                } else {
                    a(str.substring(i2, indexOf));
                    i2 = indexOf + 1;
                }
            }
        }
    }

    public void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, b.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                if (index == b.ConstraintLayout_Layout_constraint_referenced_ids) {
                    this.f2474f = obtainStyledAttributes.getString(index);
                    setIds(this.f2474f);
                }
            }
        }
    }

    public void a(ConstraintLayout constraintLayout) {
    }

    public void b(ConstraintLayout constraintLayout) {
    }

    public void c(ConstraintLayout constraintLayout) {
        if (isInEditMode()) {
            setIds(this.f2474f);
        }
        i iVar = this.f2472d;
        if (iVar != null) {
            iVar.I();
            for (int i2 = 0; i2 < this.f2470b; i2++) {
                View findViewById = constraintLayout.findViewById(this.f2469a[i2]);
                if (findViewById != null) {
                    this.f2472d.b(constraintLayout.a(findViewById));
                }
            }
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f2469a, this.f2470b);
    }

    public void onDraw(Canvas canvas) {
    }

    public void onMeasure(int i2, int i3) {
        if (this.f2473e) {
            super.onMeasure(i2, i3);
        } else {
            setMeasuredDimension(0, 0);
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f2470b = 0;
        for (int tag : iArr) {
            setTag(tag, null);
        }
    }

    public void setTag(int i2, Object obj) {
        int i3 = this.f2470b + 1;
        int[] iArr = this.f2469a;
        if (i3 > iArr.length) {
            this.f2469a = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f2469a;
        int i4 = this.f2470b;
        iArr2[i4] = i2;
        this.f2470b = i4 + 1;
    }

    public void a() {
        if (this.f2472d != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.a) {
                ((ConstraintLayout.a) layoutParams).la = this.f2472d;
            }
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2471c = context;
        a(attributeSet);
    }

    public final void a(String str) {
        int i2;
        if (str != null && this.f2471c != null) {
            String trim = str.trim();
            try {
                i2 = a.a.a.a.class.getField(trim).getInt(null);
            } catch (Exception unused) {
                i2 = 0;
            }
            if (i2 == 0) {
                i2 = this.f2471c.getResources().getIdentifier(trim, "id", this.f2471c.getPackageName());
            }
            if (i2 == 0 && isInEditMode() && (getParent() instanceof ConstraintLayout)) {
                Object a2 = ((ConstraintLayout) getParent()).a(0, (Object) trim);
                if (a2 != null && (a2 instanceof Integer)) {
                    i2 = ((Integer) a2).intValue();
                }
            }
            if (i2 != 0) {
                setTag(i2, null);
            } else {
                Log.w("ConstraintHelper", "Could not find id of \"" + trim + "\"");
            }
        }
    }

    public a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f2471c = context;
        a(attributeSet);
    }
}
