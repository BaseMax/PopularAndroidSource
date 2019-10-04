package b.j.a;

import android.database.Cursor;
import android.widget.Filter;

/* compiled from: CursorFilter */
public class b extends Filter {

    /* renamed from: a  reason: collision with root package name */
    public a f2901a;

    /* compiled from: CursorFilter */
    interface a {
        Cursor a();

        Cursor a(CharSequence charSequence);

        void a(Cursor cursor);

        CharSequence convertToString(Cursor cursor);
    }

    public b(a aVar) {
        this.f2901a = aVar;
    }

    public CharSequence convertResultToString(Object obj) {
        return this.f2901a.convertToString((Cursor) obj);
    }

    public Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor a2 = this.f2901a.a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (a2 != null) {
            filterResults.count = a2.getCount();
            filterResults.values = a2;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    public void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor a2 = this.f2901a.a();
        Object obj = filterResults.values;
        if (obj != null && obj != a2) {
            this.f2901a.a((Cursor) obj);
        }
    }
}
