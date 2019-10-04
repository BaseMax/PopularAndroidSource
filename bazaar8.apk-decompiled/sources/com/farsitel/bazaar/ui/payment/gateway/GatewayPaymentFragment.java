package com.farsitel.bazaar.ui.payment.gateway;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import b.r.E;
import b.r.G;
import b.w.C0313j;
import c.c.a.a.b.a;
import c.c.a.c.d.e;
import c.c.a.d.a.a;
import c.c.a.d.b.h;
import c.c.a.n.c.a.b;
import c.c.a.n.s.b.c;
import c.c.a.n.s.b.d;
import c.c.a.n.s.b.g;
import c.c.a.n.s.h.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.DialogVisit;
import com.farsitel.bazaar.analytics.model.what.ErrorHappenedEvent;
import com.farsitel.bazaar.analytics.model.where.GatewayPaymentScreen;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import com.farsitel.bazaar.data.feature.payment.PurchasedItemData;
import com.farsitel.bazaar.data.feature.payment.UserActionData;
import com.farsitel.bazaar.ui.payment.PaymentType;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import com.farsitel.bazaar.ui.payment.payment.options.PaymentGatewayType;
import h.f.b.j;
import java.util.HashMap;
import kotlin.TypeCastException;

/* compiled from: GatewayPaymentFragment.kt */
public final class GatewayPaymentFragment extends b {
    public a ia;
    public c.c.a.e.d.u.a ja;
    public c.c.a.n.s.a ka;
    public g la;
    public f ma;
    public c na;
    public HashMap oa;

    public void La() {
        HashMap hashMap = this.oa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
        g gVar = this.la;
        if (gVar != null) {
            c cVar = this.na;
            if (cVar != null) {
                String c2 = cVar.c();
                c cVar2 = this.na;
                if (cVar2 != null) {
                    String i2 = cVar2.i();
                    c cVar3 = this.na;
                    if (cVar3 != null) {
                        String d2 = cVar3.d();
                        c cVar4 = this.na;
                        if (cVar4 != null) {
                            long a2 = cVar4.a();
                            PaymentType.a aVar = PaymentType.Companion;
                            c cVar5 = this.na;
                            if (cVar5 != null) {
                                PaymentType a3 = aVar.a(cVar5.h());
                                PaymentGatewayType.a aVar2 = PaymentGatewayType.Companion;
                                c cVar6 = this.na;
                                if (cVar6 != null) {
                                    PaymentGatewayType a4 = aVar2.a(cVar6.g());
                                    c cVar7 = this.na;
                                    if (cVar7 != null) {
                                        gVar.a(c2, i2, d2, a2, a3, a4, cVar7.e());
                                    } else {
                                        j.c("args");
                                        throw null;
                                    }
                                } else {
                                    j.c("args");
                                    throw null;
                                }
                            } else {
                                j.c("args");
                                throw null;
                            }
                        } else {
                            j.c("args");
                            throw null;
                        }
                    } else {
                        j.c("args");
                        throw null;
                    }
                } else {
                    j.c("args");
                    throw null;
                }
            } else {
                j.c("args");
                throw null;
            }
        } else {
            j.c("viewModel");
            throw null;
        }
    }

    public final void Va() {
        g gVar = this.la;
        if (gVar != null) {
            gVar.f();
        } else {
            j.c("viewModel");
            throw null;
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        c.a aVar = c.f6831a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.na = aVar.a(C);
            a.C0074a aVar2 = c.c.a.d.a.a.f4744b;
            Context Ha = Ha();
            j.a((Object) Ha, "requireContext()");
            this.ja = aVar2.a(Ha);
            return;
        }
        j.a();
        throw null;
    }

    public View e(int i2) {
        if (this.oa == null) {
            this.oa = new HashMap();
        }
        View view = (View) this.oa.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.oa.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public GatewayPaymentScreen Sa() {
        c cVar = this.na;
        if (cVar != null) {
            String c2 = cVar.c();
            c cVar2 = this.na;
            if (cVar2 != null) {
                String i2 = cVar2.i();
                if (i2 == null) {
                    i2 = "";
                }
                String str = i2;
                c cVar3 = this.na;
                if (cVar3 != null) {
                    String h2 = cVar3.h();
                    c cVar4 = this.na;
                    if (cVar4 != null) {
                        String e2 = cVar4.e();
                        c cVar5 = this.na;
                        if (cVar5 != null) {
                            long a2 = cVar5.a();
                            c cVar6 = this.na;
                            if (cVar6 != null) {
                                GatewayPaymentScreen gatewayPaymentScreen = new GatewayPaymentScreen(c2, str, h2, e2, a2, cVar6.f());
                                return gatewayPaymentScreen;
                            }
                            j.c("args");
                            throw null;
                        }
                        j.c("args");
                        throw null;
                    }
                    j.c("args");
                    throw null;
                }
                j.c("args");
                throw null;
            }
            j.c("args");
            throw null;
        }
        j.c("args");
        throw null;
    }

    public void a(Context context) {
        j.b(context, "context");
        c.c.a.n.s.a aVar = (c.c.a.n.s.a) (!(context instanceof c.c.a.n.s.a) ? null : context);
        if (aVar != null) {
            this.ka = aVar;
            super.a(context);
            return;
        }
        throw new RuntimeException("this activity must implement FinishPaymentCallbacks");
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_gateway_payment, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        b.a(this, new DialogVisit(e.a()), null, null, 6, null);
        E a2 = G.a((Fragment) this, Ra()).a(g.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        g gVar = (g) a2;
        h.a(this, gVar.e(), new GatewayPaymentFragment$onViewCreated$1$1(this));
        this.la = gVar;
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        E a3 = G.a(Ga, Ra()).a(f.class);
        j.a((Object) a3, "ViewModelProviders.of(th…, factory)[T::class.java]");
        f fVar = (f) a3;
        fVar.f().a(ba(), new b(this));
        this.ma = fVar;
        Ua();
        c(view);
    }

    public final void a(Resource<? extends PaymentData> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) PaymentState.UserAction.f12171a)) {
                Object a2 = resource.a();
                if (a2 != null) {
                    a((UserActionData) a2);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.UserActionData");
            } else if (j.a((Object) d2, (Object) PaymentState.PurchaseCreditCompleted.f12169a)) {
                String b2 = b((int) R.string.credit_purchased_successfully);
                j.a((Object) b2, "getString(R.string.credit_purchased_successfully)");
                a(this, b2, null, null, 6, null);
            } else if (j.a((Object) d2, (Object) PaymentState.PurchaseProductCompleted.f12170a)) {
                Object a3 = resource.a();
                if (!(a3 instanceof PurchasedItemData)) {
                    a3 = null;
                }
                a((PurchasedItemData) a3);
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                a(resource.c());
            }
        }
    }

    public final void a(UserActionData userActionData) {
        if (c.c.a.n.s.b.a.f6829a[userActionData.a().ordinal()] != 1) {
            c.c.a.c.c.a.f4699b.a((Throwable) new RuntimeException("Not Implemented"));
            a((ErrorModel) ErrorModel.NotImplemented.INSTANCE);
            return;
        }
        c.c.a.i.c.a(b.w.b.b.a(this), d.a.a(d.f6841a, userActionData.b(), 0, (Bundle) null, 0, "https://pardakht.cafebazaar.ir/payment/done/", 14, (Object) null));
    }

    public final void a(PurchasedItemData purchasedItemData) {
        if (purchasedItemData != null) {
            String b2 = b((int) R.string.purchase_completed_successfully);
            j.a((Object) b2, "getString(R.string.purch…e_completed_successfully)");
            a(b2, purchasedItemData.a(), purchasedItemData.b());
            return;
        }
        c.c.a.c.c.a.f4699b.a(new Throwable("cannot call on onPaymentSuccess because purchase data is null"));
        a((ErrorModel) ErrorModel.UnExpected.INSTANCE);
    }

    public static /* synthetic */ void a(GatewayPaymentFragment gatewayPaymentFragment, String str, String str2, String str3, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str2 = null;
        }
        if ((i2 & 4) != 0) {
            str3 = null;
        }
        gatewayPaymentFragment.a(str, str2, str3);
    }

    public final void a(String str, String str2, String str3) {
        c cVar = this.na;
        if (cVar != null) {
            BuyProductArgs b2 = cVar.b();
            c cVar2 = this.na;
            if (cVar2 != null) {
                if (!j.a((Object) cVar2.g(), (Object) PaymentGatewayType.CREDIT.f())) {
                    c.c.a.a.b.a aVar = this.ia;
                    if (aVar != null) {
                        Bundle bundle = new Bundle();
                        StringBuilder sb = new StringBuilder();
                        c cVar3 = this.na;
                        if (cVar3 != null) {
                            sb.append(cVar3.c());
                            sb.append('_');
                            c cVar4 = this.na;
                            if (cVar4 != null) {
                                sb.append(cVar4.i());
                                bundle.putString("item_id", sb.toString());
                                c cVar5 = this.na;
                                if (cVar5 != null) {
                                    bundle.putDouble("value", (double) cVar5.a());
                                    c.c.a.e.d.u.a aVar2 = this.ja;
                                    if (aVar2 != null) {
                                        bundle.putString("currency", aVar2.j());
                                        aVar.a("ecommerce_purchase", bundle);
                                    } else {
                                        j.c("appSettings");
                                        throw null;
                                    }
                                } else {
                                    j.c("args");
                                    throw null;
                                }
                            } else {
                                j.c("args");
                                throw null;
                            }
                        } else {
                            j.c("args");
                            throw null;
                        }
                    } else {
                        j.c("firebaseAnalyticsTracker");
                        throw null;
                    }
                }
                c cVar6 = this.na;
                if (cVar6 == null) {
                    j.c("args");
                    throw null;
                } else if (!cVar6.f() || b2 == null) {
                    c.c.a.i.c.a(b.w.b.b.a(this), d.a.a(d.f6841a, true, (ErrorModel) null, str, str2, str3, 2, (Object) null));
                } else {
                    c.c.a.i.c.a(b.w.b.b.a(this), d.f6841a.a(b2));
                }
            } else {
                j.c("args");
                throw null;
            }
        } else {
            j.c("args");
            throw null;
        }
    }

    public final void a(ErrorModel errorModel) {
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        b.a(this, new ErrorHappenedEvent(c.c.a.d.b.d.b(Ha, errorModel)), null, null, 6, null);
        C0313j a2 = b.w.b.b.a(this);
        d.a aVar = d.f6841a;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        c.c.a.i.c.a(a2, d.a.a(aVar, false, errorModel, c.c.a.d.b.d.b(Ha2, errorModel), (String) null, (String) null, 24, (Object) null));
    }
}
