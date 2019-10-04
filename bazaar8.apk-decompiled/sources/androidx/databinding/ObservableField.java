package androidx.databinding;

import b.l.C0272b;
import java.io.Serializable;

public class ObservableField<T> extends C0272b implements Serializable {
    public static final long serialVersionUID = 1;
    public T mValue;

    public ObservableField(T t) {
        this.mValue = t;
    }

    public void a(T t) {
        if (t != this.mValue) {
            this.mValue = t;
            a();
        }
    }

    public T b() {
        return this.mValue;
    }

    public ObservableField() {
    }
}
