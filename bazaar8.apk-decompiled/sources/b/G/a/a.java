package b.G.a;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: PagerAdapter */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final DataSetObservable f1310a = new DataSetObservable();

    /* renamed from: b  reason: collision with root package name */
    public DataSetObserver f1311b;

    public abstract int a();

    public int a(Object obj) {
        return -1;
    }

    public CharSequence a(int i2) {
        return null;
    }

    public abstract Object a(ViewGroup viewGroup, int i2);

    public void a(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Deprecated
    public void a(View view) {
    }

    @Deprecated
    public void a(View view, int i2, Object obj) {
    }

    public void a(ViewGroup viewGroup) {
        a((View) viewGroup);
    }

    public abstract void a(ViewGroup viewGroup, int i2, Object obj);

    public abstract boolean a(View view, Object obj);

    public float b(int i2) {
        return 1.0f;
    }

    public Parcelable b() {
        return null;
    }

    @Deprecated
    public void b(View view) {
    }

    public void b(ViewGroup viewGroup) {
        b((View) viewGroup);
    }

    public void c(DataSetObserver dataSetObserver) {
        this.f1310a.unregisterObserver(dataSetObserver);
    }

    public void a(DataSetObserver dataSetObserver) {
        this.f1310a.registerObserver(dataSetObserver);
    }

    public void b(ViewGroup viewGroup, int i2, Object obj) {
        a((View) viewGroup, i2, obj);
    }

    public void b(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.f1311b = dataSetObserver;
        }
    }
}
