package c.c.a.n.u.c;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RatingBar;
import androidx.appcompat.widget.AppCompatImageView;
import c.c.a.c.h.e;
import c.c.a.d.f.r;
import c.c.a.f.C0415e;
import c.c.a.n.u.b.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.where.ThirdPartyReviewScreen;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.ui.reviews.thirdparty.ThirdPartyPendingResult;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Locale;

/* compiled from: ThirdPartyReviewFragment.kt */
public final class d extends g<ThirdPartyPendingResult> {
    public static final a Ha = new a(null);
    public final String Ia = "ThirdPartyReview";
    public Long Ja;
    public ThirdPartyPendingResult Ka;
    public b La;
    public String Ma;
    public C0415e Na;
    public HashMap Oa;

    /* compiled from: ThirdPartyReviewFragment.kt */
    public static final class a {
        public a() {
        }

        public final d a(String str, ThirdPartyPendingResult thirdPartyPendingResult) {
            j.b(str, "packageName");
            d dVar = new d();
            Bundle bundle = new Bundle();
            bundle.putString("packageName", str);
            if (thirdPartyPendingResult != null) {
                bundle.putSerializable("thirdPartyPendingResult", thirdPartyPendingResult);
            }
            dVar.m(bundle);
            return dVar;
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    /* compiled from: ThirdPartyReviewFragment.kt */
    public interface b {
        void p();
    }

    public static final /* synthetic */ b a(d dVar) {
        b bVar = dVar.La;
        if (bVar != null) {
            return bVar;
        }
        j.c("communicator");
        throw null;
    }

    public void Qa() {
        HashMap hashMap = this.Oa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public String Sa() {
        return this.Ia;
    }

    public void b(View view) {
        j.b(view, "view");
        super.b(view);
        e eVar = e.f4731a;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        String str = this.Ma;
        if (str != null) {
            this.Ja = eVar.c(Ha2, str);
            if (this.Ja == null) {
                b bVar = this.La;
                if (bVar != null) {
                    bVar.p();
                } else {
                    j.c("communicator");
                    throw null;
                }
            } else {
                ((AppCompatImageView) e(c.c.a.e.close)).setOnClickListener(new e(this));
            }
        } else {
            j.c("packageName");
            throw null;
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        Bundle C = C();
        if (C != null) {
            String string = C.getString("packageName");
            if (string != null) {
                this.Ma = string;
                Bundle C2 = C();
                Serializable serializable = C2 != null ? C2.getSerializable("thirdPartyPendingResult") : null;
                if (!(serializable instanceof ThirdPartyPendingResult)) {
                    serializable = null;
                }
                this.Ka = (ThirdPartyPendingResult) serializable;
                m(this.Ka != null);
                return;
            }
        }
        throw new IllegalStateException("open fragment via newInstance companion method");
    }

    public final String d(String str) {
        e eVar = e.f4731a;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        Locale locale = Locale.getDefault();
        j.a((Object) locale, "Locale.getDefault()");
        String a2 = eVar.a(Ha2, str, locale);
        if (a2 != null) {
            return a2;
        }
        String b2 = b((int) R.string.app_name);
        j.a((Object) b2, "getString(R.string.app_name)");
        return b2;
    }

    public View e(int i2) {
        if (this.Oa == null) {
            this.Oa = new HashMap();
        }
        View view = (View) this.Oa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Oa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public void ib() {
        super.ib();
        c.c.a.d.b.f.a(this, nb(), 0, 2, null);
        b bVar = this.La;
        if (bVar != null) {
            bVar.p();
        } else {
            j.c("communicator");
            throw null;
        }
    }

    public void kb() {
        super.kb();
        r Ra = Ra();
        if (Ra != null) {
            Ra.a(new ThirdPartyPendingResult((int) ob().getRating(), eb().getText().toString()));
        }
        Ma();
    }

    public void lb() {
        if (pb()) {
            c.c.a.n.u.b.e hb = hb();
            int numStars = ob().getNumStars();
            String obj = eb().getText().toString();
            Long l2 = this.Ja;
            if (l2 != null) {
                hb.a("", numStars, obj, l2.longValue(), EntityType.APP, fb());
            } else {
                j.a();
                throw null;
            }
        } else {
            qb();
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        Qa();
    }

    public final void rb() {
        C0415e eVar = this.Na;
        if (eVar != null) {
            String str = this.Ma;
            if (str != null) {
                eVar.a(d(str));
                C0415e eVar2 = this.Na;
                if (eVar2 != null) {
                    String str2 = this.Ma;
                    if (str2 != null) {
                        eVar2.a(c(str2));
                        C0415e eVar3 = this.Na;
                        if (eVar3 != null) {
                            eVar3.c(b((int) R.string.write_review));
                            C0415e eVar4 = this.Na;
                            if (eVar4 != null) {
                                eVar4.b(hb().f());
                                C0415e eVar5 = this.Na;
                                if (eVar5 != null) {
                                    eVar5.g();
                                    ThirdPartyPendingResult thirdPartyPendingResult = this.Ka;
                                    if (thirdPartyPendingResult != null) {
                                        C0415e eVar6 = this.Na;
                                        if (eVar6 != null) {
                                            RatingBar ratingBar = eVar6.I;
                                            j.a((Object) ratingBar, "dataBinding.rbPostComment");
                                            ratingBar.setRating((float) thirdPartyPendingResult.b());
                                            C0415e eVar7 = this.Na;
                                            if (eVar7 != null) {
                                                eVar7.G.setText(thirdPartyPendingResult.a());
                                            } else {
                                                j.c("dataBinding");
                                                throw null;
                                            }
                                        } else {
                                            j.c("dataBinding");
                                            throw null;
                                        }
                                    }
                                } else {
                                    j.c("dataBinding");
                                    throw null;
                                }
                            } else {
                                j.c("dataBinding");
                                throw null;
                            }
                        } else {
                            j.c("dataBinding");
                            throw null;
                        }
                    } else {
                        j.c("packageName");
                        throw null;
                    }
                } else {
                    j.c("dataBinding");
                    throw null;
                }
            } else {
                j.c("packageName");
                throw null;
            }
        } else {
            j.c("dataBinding");
            throw null;
        }
    }

    public ThirdPartyReviewScreen _a() {
        return new ThirdPartyReviewScreen();
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        C0415e a2 = C0415e.a(layoutInflater, viewGroup, false);
        j.a((Object) a2, "AlertThirdpartReviewBind…flater, container, false)");
        this.Na = a2;
        C0415e eVar = this.Na;
        if (eVar != null) {
            View h2 = eVar.h();
            Dialog Na2 = Na();
            if (Na2 != null) {
                Window window = Na2.getWindow();
                if (window != null) {
                    window.setBackgroundDrawableResource(R.drawable.shape_round);
                }
            }
            return h2;
        }
        j.c("dataBinding");
        throw null;
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        rb();
    }

    public final Drawable c(String str) {
        e eVar = e.f4731a;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        return eVar.d(Ha2, str);
    }

    public void a(Context context) {
        j.b(context, "context");
        super.a(context);
        if (!(context instanceof b)) {
            context = null;
        }
        b bVar = (b) context;
        if (bVar != null) {
            this.La = bVar;
            return;
        }
        throw new IllegalAccessError("activity must implement thirdPartyCommunicator");
    }
}
