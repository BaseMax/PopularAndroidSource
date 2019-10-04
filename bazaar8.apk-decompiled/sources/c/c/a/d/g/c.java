package c.c.a.d.g;

import android.graphics.Point;
import android.view.View;
import h.f.b.j;

/* compiled from: ViewUtil.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final String f4816a = f4816a;

    /* renamed from: b  reason: collision with root package name */
    public static final c f4817b = new c();

    public static final Point a(View view) {
        j.b(view, "view");
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Point point = new Point(iArr[0], iArr[1]);
        point.offset(view.getWidth() / 2, view.getHeight() / 2);
        return point;
    }
}
