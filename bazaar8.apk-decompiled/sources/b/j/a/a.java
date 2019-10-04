package b.j.a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import b.j.a.b;

/* compiled from: CursorAdapter */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* renamed from: a  reason: collision with root package name */
    public boolean f2891a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f2892b;

    /* renamed from: c  reason: collision with root package name */
    public Cursor f2893c;

    /* renamed from: d  reason: collision with root package name */
    public Context f2894d;

    /* renamed from: e  reason: collision with root package name */
    public int f2895e;

    /* renamed from: f  reason: collision with root package name */
    public C0037a f2896f;

    /* renamed from: g  reason: collision with root package name */
    public DataSetObserver f2897g;

    /* renamed from: h  reason: collision with root package name */
    public b f2898h;

    /* renamed from: b.j.a.a$a  reason: collision with other inner class name */
    /* compiled from: CursorAdapter */
    private class C0037a extends ContentObserver {
        public C0037a() {
            super(new Handler());
        }

        public boolean deliverSelfNotifications() {
            return true;
        }

        public void onChange(boolean z) {
            a.this.b();
        }
    }

    /* compiled from: CursorAdapter */
    private class b extends DataSetObserver {
        public b() {
        }

        public void onChanged() {
            a aVar = a.this;
            aVar.f2891a = true;
            aVar.notifyDataSetChanged();
        }

        public void onInvalidated() {
            a aVar = a.this;
            aVar.f2891a = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public void a(Context context, Cursor cursor, int i2) {
        boolean z = false;
        if ((i2 & 1) == 1) {
            i2 |= 2;
            this.f2892b = true;
        } else {
            this.f2892b = false;
        }
        if (cursor != null) {
            z = true;
        }
        this.f2893c = cursor;
        this.f2891a = z;
        this.f2894d = context;
        this.f2895e = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i2 & 2) == 2) {
            this.f2896f = new C0037a();
            this.f2897g = new b();
        } else {
            this.f2896f = null;
            this.f2897g = null;
        }
        if (z) {
            C0037a aVar = this.f2896f;
            if (aVar != null) {
                cursor.registerContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.f2897g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract void a(View view, Context context, Cursor cursor);

    public Cursor b(Cursor cursor) {
        Cursor cursor2 = this.f2893c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0037a aVar = this.f2896f;
            if (aVar != null) {
                cursor2.unregisterContentObserver(aVar);
            }
            DataSetObserver dataSetObserver = this.f2897g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f2893c = cursor;
        if (cursor != null) {
            C0037a aVar2 = this.f2896f;
            if (aVar2 != null) {
                cursor.registerContentObserver(aVar2);
            }
            DataSetObserver dataSetObserver2 = this.f2897g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f2895e = cursor.getColumnIndexOrThrow("_id");
            this.f2891a = true;
            notifyDataSetChanged();
        } else {
            this.f2895e = -1;
            this.f2891a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    public abstract View b(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract CharSequence convertToString(Cursor cursor);

    public int getCount() {
        if (this.f2891a) {
            Cursor cursor = this.f2893c;
            if (cursor != null) {
                return cursor.getCount();
            }
        }
        return 0;
    }

    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f2891a) {
            return null;
        }
        this.f2893c.moveToPosition(i2);
        if (view == null) {
            view = a(this.f2894d, this.f2893c, viewGroup);
        }
        a(view, this.f2894d, this.f2893c);
        return view;
    }

    public Filter getFilter() {
        if (this.f2898h == null) {
            this.f2898h = new b(this);
        }
        return this.f2898h;
    }

    public Object getItem(int i2) {
        if (this.f2891a) {
            Cursor cursor = this.f2893c;
            if (cursor != null) {
                cursor.moveToPosition(i2);
                return this.f2893c;
            }
        }
        return null;
    }

    public long getItemId(int i2) {
        if (this.f2891a) {
            Cursor cursor = this.f2893c;
            if (cursor != null && cursor.moveToPosition(i2)) {
                return this.f2893c.getLong(this.f2895e);
            }
        }
        return 0;
    }

    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f2891a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (this.f2893c.moveToPosition(i2)) {
            if (view == null) {
                view = b(this.f2894d, this.f2893c, viewGroup);
            }
            a(view, this.f2894d, this.f2893c);
            return view;
        } else {
            throw new IllegalStateException("couldn't move cursor to position " + i2);
        }
    }

    public Cursor a() {
        return this.f2893c;
    }

    public void b() {
        if (this.f2892b) {
            Cursor cursor = this.f2893c;
            if (cursor != null && !cursor.isClosed()) {
                this.f2891a = this.f2893c.requery();
            }
        }
    }

    public void a(Cursor cursor) {
        Cursor b2 = b(cursor);
        if (b2 != null) {
            b2.close();
        }
    }
}
