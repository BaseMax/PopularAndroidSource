package c.c.a.n.r;

import android.content.Context;
import androidx.lifecycle.LiveData;
import c.c.a.d.c.b;
import c.c.a.e.d.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.user.User;
import h.f.b.j;
import java.util.ArrayList;

/* compiled from: ChildMyBazaarViewModel.kt */
public final class g extends c.c.a.n.c.d.g<RecyclerData, ArrayList<RecyclerData>> {

    /* renamed from: j  reason: collision with root package name */
    public final Context f6788j;

    /* renamed from: k  reason: collision with root package name */
    public final a f6789k;

    /* renamed from: l  reason: collision with root package name */
    public final b f6790l;
    public final c.c.a.e.d.u.a m;

    public g(Context context, a aVar, b bVar, c.c.a.e.d.u.a aVar2) {
        j.b(context, "context");
        j.b(aVar, "accountRepository");
        j.b(bVar, "accountManager");
        j.b(aVar2, "settingRepository");
        this.f6788j = context;
        this.f6789k = aVar;
        this.f6790l = bVar;
        this.m = aVar2;
    }

    /* renamed from: a */
    public void d(ArrayList<RecyclerData> arrayList) {
        j.b(arrayList, "params");
        a(arrayList);
    }

    public final LiveData<User> j() {
        return this.f6790l.c();
    }

    public final ArrayList<RecyclerData> k() {
        return j.f6795a.a(this.f6790l.f());
    }

    public final void l() {
        this.f6789k.B();
    }

    public final ArrayList<RecyclerData> a(int i2, int i3) {
        String str;
        String str2 = null;
        if (i2 == 0) {
            str = null;
        } else {
            str = this.f6788j.getString(R.string.number_placeholder, new Object[]{Integer.valueOf(i2)});
        }
        if (i3 != 0) {
            str2 = this.f6788j.getString(R.string.number_placeholder, new Object[]{Integer.valueOf(i3)});
        }
        return j.f6795a.a(this.f6790l.f(), str, str2, this.f6790l.e(), this.m.u());
    }
}
