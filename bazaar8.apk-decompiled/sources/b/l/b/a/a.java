package b.l.b.a;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import b.l.C0274d;
import b.l.C0276f;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DataBinderMapperImpl */
public class a extends C0274d {

    /* renamed from: a  reason: collision with root package name */
    public static final SparseIntArray f2937a = new SparseIntArray(0);

    public ViewDataBinding a(C0276f fVar, View view, int i2) {
        if (f2937a.get(i2) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    public ViewDataBinding a(C0276f fVar, View[] viewArr, int i2) {
        if (viewArr == null || viewArr.length == 0 || f2937a.get(i2) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    public List<C0274d> a() {
        return new ArrayList(0);
    }
}
