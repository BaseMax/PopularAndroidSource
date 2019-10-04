package b.b.a;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import androidx.appcompat.app.AlertController;

/* renamed from: b.b.a.i  reason: case insensitive filesystem */
/* compiled from: AlertController */
class C0198i extends CursorAdapter {

    /* renamed from: a  reason: collision with root package name */
    public final int f1746a;

    /* renamed from: b  reason: collision with root package name */
    public final int f1747b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AlertController.RecycleListView f1748c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ AlertController f1749d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AlertController.a f1750e;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0198i(AlertController.a aVar, Context context, Cursor cursor, boolean z, AlertController.RecycleListView recycleListView, AlertController alertController) {
        super(context, cursor, z);
        this.f1750e = aVar;
        this.f1748c = recycleListView;
        this.f1749d = alertController;
        Cursor cursor2 = getCursor();
        this.f1746a = cursor2.getColumnIndexOrThrow(this.f1750e.L);
        this.f1747b = cursor2.getColumnIndexOrThrow(this.f1750e.M);
    }

    public void bindView(View view, Context context, Cursor cursor) {
        ((CheckedTextView) view.findViewById(16908308)).setText(cursor.getString(this.f1746a));
        AlertController.RecycleListView recycleListView = this.f1748c;
        int position = cursor.getPosition();
        boolean z = true;
        if (cursor.getInt(this.f1747b) != 1) {
            z = false;
        }
        recycleListView.setItemChecked(position, z);
    }

    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f1750e.f243b.inflate(this.f1749d.M, viewGroup, false);
    }
}
