package b.y.a;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: LayoutState */
public class w {

    /* renamed from: a  reason: collision with root package name */
    public boolean f3558a = true;

    /* renamed from: b  reason: collision with root package name */
    public int f3559b;

    /* renamed from: c  reason: collision with root package name */
    public int f3560c;

    /* renamed from: d  reason: collision with root package name */
    public int f3561d;

    /* renamed from: e  reason: collision with root package name */
    public int f3562e;

    /* renamed from: f  reason: collision with root package name */
    public int f3563f = 0;

    /* renamed from: g  reason: collision with root package name */
    public int f3564g = 0;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3565h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3566i;

    public boolean a(RecyclerView.t tVar) {
        int i2 = this.f3560c;
        return i2 >= 0 && i2 < tVar.a();
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f3559b + ", mCurrentPosition=" + this.f3560c + ", mItemDirection=" + this.f3561d + ", mLayoutDirection=" + this.f3562e + ", mStartLine=" + this.f3563f + ", mEndLine=" + this.f3564g + '}';
    }

    public View a(RecyclerView.p pVar) {
        View d2 = pVar.d(this.f3560c);
        this.f3560c += this.f3561d;
        return d2;
    }
}
