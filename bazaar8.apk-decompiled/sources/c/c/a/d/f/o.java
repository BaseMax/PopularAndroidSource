package c.c.a.d.f;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import b.b.a.C0202m;
import b.i.k.E;
import b.o.a.C0285i;
import c.c.a.c.a.b;
import c.c.a.d.d;
import c.c.a.d.d.e;
import com.crashlytics.android.core.CrashlyticsController;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.google.android.material.snackbar.Snackbar;
import h.c.e;
import h.f.a.a;
import h.f.b.j;
import h.h;
import i.a.C1125ra;
import i.a.H;
import i.a.va;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.TypeCastException;

/* compiled from: BaseFragment.kt */
public abstract class o extends Fragment implements H {
    public C1125ra Y;
    public Toolbar Z;
    public ViewGroup aa;
    public final boolean ba = true;
    public HashMap ca;

    public void La() {
        HashMap hashMap = this.ca;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public boolean Ma() {
        return this.ba;
    }

    public final Toolbar Na() {
        return this.Z;
    }

    public final void Oa() {
        ViewGroup viewGroup = this.aa;
        if (viewGroup != null) {
            viewGroup.setVisibility(8);
        }
    }

    public a<h> Pa() {
        return BaseFragment$retryLoadData$1.f12184a;
    }

    public e a() {
        e b2 = b.f4693c.b();
        C1125ra raVar = this.Y;
        if (raVar != null) {
            return b2.plus(raVar);
        }
        j.c("job");
        throw null;
    }

    public final void b(ViewGroup viewGroup) {
        this.aa = viewGroup;
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        this.Y = va.a(null, 1, null);
    }

    public View e(int i2) {
        if (this.ca == null) {
            this.ca = new HashMap();
        }
        View view = (View) this.ca.get(Integer.valueOf(i2));
        if (view == null) {
            View aa2 = aa();
            if (aa2 == null) {
                return null;
            }
            view = aa2.findViewById(i2);
            this.ca.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean m() {
        return false;
    }

    public void n(Bundle bundle) {
        j.b(bundle, "bundle");
    }

    public void oa() {
        super.oa();
        C1125ra raVar = this.Y;
        if (raVar != null) {
            C1125ra.a.a(raVar, null, 1, null);
        } else {
            j.c("job");
            throw null;
        }
    }

    public void qa() {
        a(this.aa);
        View aa2 = aa();
        if (!(aa2 instanceof ViewGroup)) {
            aa2 = null;
        }
        a((ViewGroup) aa2);
        ViewGroup viewGroup = this.aa;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.qa();
        La();
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        c(view);
    }

    public final void b(View view) {
        j.b(view, "view");
        this.aa = (ViewGroup) view.findViewById(d.errorView);
    }

    public void c(View view) {
        j.b(view, "view");
        Toolbar toolbar = (Toolbar) view.findViewById(d.toolbar);
        if (toolbar == null) {
            return;
        }
        if (Ma()) {
            this.Z = toolbar;
            C0285i x = x();
            if (x != null) {
                ((C0202m) x).a(this.Z);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        }
        toolbar.setVisibility(8);
    }

    public void a(ErrorModel errorModel, boolean z) {
        int i2;
        j.b(errorModel, CrashlyticsController.EVENT_TYPE_LOGGED);
        ViewGroup viewGroup = this.aa;
        if (viewGroup == null || z) {
            View aa2 = aa();
            if (aa2 != null) {
                Snackbar.a(aa2, errorModel.getMessage(), -2).m();
            } else {
                j.a();
                throw null;
            }
        } else if (viewGroup != null) {
            viewGroup.removeAllViews();
            if (errorModel instanceof ErrorModel.NotFound) {
                i2 = c.c.a.d.e.error_not_found;
            } else if (errorModel instanceof ErrorModel.NetworkConnection) {
                e.a aVar = c.c.a.d.d.e.f4772a;
                Context Ha = Ha();
                j.a((Object) Ha, "requireContext()");
                i2 = aVar.a(Ha) ? c.c.a.d.e.error_general : c.c.a.d.e.error_network;
            } else {
                i2 = c.c.a.d.e.error_general;
            }
            ViewGroup viewGroup2 = this.aa;
            if (viewGroup2 != null) {
                viewGroup2.addView(LayoutInflater.from(Ha()).inflate(i2, null, false));
                ViewGroup viewGroup3 = this.aa;
                if (viewGroup3 != null) {
                    View findViewById = viewGroup3.findViewById(d.retry);
                    if (findViewById != null) {
                        findViewById.setOnClickListener(new n(this));
                    }
                }
                if (errorModel.getMessage().length() > 0) {
                    AppCompatTextView appCompatTextView = (AppCompatTextView) e(d.notFoundText);
                    if (appCompatTextView != null) {
                        appCompatTextView.setText(errorModel.getMessage());
                    }
                }
                ViewGroup viewGroup4 = this.aa;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(0);
                } else {
                    j.a();
                    throw null;
                }
            } else {
                j.a();
                throw null;
            }
        } else {
            j.a();
            throw null;
        }
    }

    public final void a(ViewGroup viewGroup) {
        if (viewGroup != null) {
            h.j.d<View> a2 = E.a(viewGroup);
            if (a2 != null) {
                Iterator<View> it = a2.iterator();
                if (it != null) {
                    while (it.hasNext()) {
                        View next = it.next();
                        next.setOnClickListener(null);
                        if (next instanceof ViewGroup) {
                            a((ViewGroup) next);
                        }
                    }
                }
            }
        }
    }
}
