package b.j.a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: ResourceCursorAdapter */
public abstract class c extends a {

    /* renamed from: i  reason: collision with root package name */
    public int f2902i;

    /* renamed from: j  reason: collision with root package name */
    public int f2903j;

    /* renamed from: k  reason: collision with root package name */
    public LayoutInflater f2904k;

    @Deprecated
    public c(Context context, int i2, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f2903j = i2;
        this.f2902i = i2;
        this.f2904k = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f2904k.inflate(this.f2903j, viewGroup, false);
    }

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f2904k.inflate(this.f2902i, viewGroup, false);
    }
}
