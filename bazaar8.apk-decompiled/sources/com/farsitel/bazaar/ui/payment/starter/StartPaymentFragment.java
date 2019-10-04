package com.farsitel.bazaar.ui.payment.starter;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import b.o.a.C0285i;
import b.r.E;
import b.r.G;
import b.w.C0313j;
import c.c.a.c.h.d;
import c.c.a.d.b.h;
import c.c.a.i.c;
import c.c.a.n.c.a.b;
import c.c.a.n.s.b.d;
import c.c.a.n.s.f.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.StartFlowEvent;
import com.farsitel.bazaar.analytics.model.where.PaymentFlow;
import com.farsitel.bazaar.common.model.login.LoginType;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.login.LoginActivity;
import com.farsitel.bazaar.ui.payment.payment.options.BuyProductArgs;
import h.f.b.j;
import java.util.HashMap;
import java.util.List;

/* compiled from: StartPaymentFragment.kt */
public final class StartPaymentFragment extends b {
    public final boolean ia = true;
    public c.c.a.n.s.f.b ja;
    public a ka;
    public c.c.a.n.s.a la;
    public HashMap ma;

    /* compiled from: StartPaymentFragment.kt */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f12362a;

        /* renamed from: b  reason: collision with root package name */
        public final String f12363b;

        /* renamed from: c  reason: collision with root package name */
        public final String f12364c;

        /* renamed from: d  reason: collision with root package name */
        public final String f12365d;

        /* renamed from: e  reason: collision with root package name */
        public String f12366e;

        public a(String str, String str2, String str3, String str4, String str5) {
            j.b(str, "dealerPackageName");
            j.b(str5, "paymentType");
            this.f12362a = str;
            this.f12363b = str2;
            this.f12364c = str3;
            this.f12365d = str4;
            this.f12366e = str5;
        }

        public final String a() {
            return this.f12362a;
        }

        public final String b() {
            return this.f12365d;
        }

        public final String c() {
            return this.f12366e;
        }

        public final String d() {
            return this.f12364c;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.f12366e, (java.lang.Object) r3.f12366e) != false) goto L_0x003d;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x003d
                boolean r0 = r3 instanceof com.farsitel.bazaar.ui.payment.starter.StartPaymentFragment.a
                if (r0 == 0) goto L_0x003b
                com.farsitel.bazaar.ui.payment.starter.StartPaymentFragment$a r3 = (com.farsitel.bazaar.ui.payment.starter.StartPaymentFragment.a) r3
                java.lang.String r0 = r2.f12362a
                java.lang.String r1 = r3.f12362a
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.f12363b
                java.lang.String r1 = r3.f12363b
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.f12364c
                java.lang.String r1 = r3.f12364c
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.f12365d
                java.lang.String r1 = r3.f12365d
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x003b
                java.lang.String r0 = r2.f12366e
                java.lang.String r3 = r3.f12366e
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x003b
                goto L_0x003d
            L_0x003b:
                r3 = 0
                return r3
            L_0x003d:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.payment.starter.StartPaymentFragment.a.equals(java.lang.Object):boolean");
        }

        public int hashCode() {
            String str = this.f12362a;
            int i2 = 0;
            int hashCode = (str != null ? str.hashCode() : 0) * 31;
            String str2 = this.f12363b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f12364c;
            int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f12365d;
            int hashCode4 = (hashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
            String str5 = this.f12366e;
            if (str5 != null) {
                i2 = str5.hashCode();
            }
            return hashCode4 + i2;
        }

        public String toString() {
            return "PaymentConfigs(dealerPackageName=" + this.f12362a + ", name=" + this.f12363b + ", sku=" + this.f12364c + ", developerPayload=" + this.f12365d + ", paymentType=" + this.f12366e + ")";
        }
    }

    public void La() {
        HashMap hashMap = this.ma;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public boolean Ta() {
        return this.ia;
    }

    public final a Ua() {
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        Intent intent = Ga.getIntent();
        j.a((Object) intent, "intent");
        Uri data = intent.getData();
        if (data != null) {
            String str = data.getPathSegments().get(1);
            String stringExtra = intent.getStringExtra("DEALER_PACKAGE_NAME");
            j.a((Object) stringExtra, "intent.getStringExtra(Pa….KEY_DEALER_PACKAGE_NAME)");
            String stringExtra2 = intent.getStringExtra("NAME");
            String stringExtra3 = intent.getStringExtra("SKU");
            String stringExtra4 = intent.getStringExtra("DEV_PAYLOAD");
            j.a((Object) str, "paymentType");
            a aVar = new a(stringExtra, stringExtra2, stringExtra3, stringExtra4, str);
            return aVar;
        }
        j.a();
        throw null;
    }

    public final void Va() {
        c.a(b.w.b.b.a(this), a.C0101a.a(c.c.a.n.s.f.a.f6902a, 0, null, 3, null));
    }

    public final void Wa() {
        a aVar = this.ka;
        if (aVar != null) {
            String d2 = aVar.d();
            if (d2 != null) {
                C0313j a2 = b.w.b.b.a(this);
                a.C0101a aVar2 = c.c.a.n.s.f.a.f6902a;
                a aVar3 = this.ka;
                if (aVar3 != null) {
                    String a3 = aVar3.a();
                    a aVar4 = this.ka;
                    if (aVar4 != null) {
                        String c2 = aVar4.c();
                        a aVar5 = this.ka;
                        if (aVar5 != null) {
                            c.a(a2, aVar2.a(new BuyProductArgs(a3, d2, c2, aVar5.b())));
                        } else {
                            j.c("paymentConfigs");
                            throw null;
                        }
                    } else {
                        j.c("paymentConfigs");
                        throw null;
                    }
                } else {
                    j.c("paymentConfigs");
                    throw null;
                }
            } else {
                c.c.a.c.c.a.f4699b.a((Throwable) new IllegalStateException("trying to buy a product with null sku"));
                a((ErrorModel) ErrorModel.UnExpected.INSTANCE);
            }
        } else {
            j.c("paymentConfigs");
            throw null;
        }
    }

    public final void Xa() {
        LoginActivity.a aVar = LoginActivity.w;
        a aVar2 = this.ka;
        if (aVar2 != null) {
            aVar.a((Fragment) this, 4000, aVar2.a(), LoginType.IN_APP_PURCHASE);
        } else {
            j.c("paymentConfigs");
            throw null;
        }
    }

    public final boolean Ya() {
        String str;
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        Intent intent = Ga.getIntent();
        j.a((Object) intent, "requireActivity().intent");
        Uri data = intent.getData();
        if (d.a(18)) {
            C0285i Ga2 = Ga();
            j.a((Object) Ga2, "requireActivity()");
            str = Ga2.getCallingPackage();
        } else {
            C0285i Ga3 = Ga();
            j.a((Object) Ga3, "requireActivity()");
            if (Ga3.getCallingActivity() != null) {
                C0285i Ga4 = Ga();
                j.a((Object) Ga4, "requireActivity()");
                ComponentName callingActivity = Ga4.getCallingActivity();
                if (callingActivity != null) {
                    str = callingActivity.getPackageName();
                } else {
                    j.a();
                    throw null;
                }
            } else {
                C0285i Ga5 = Ga();
                j.a((Object) Ga5, "requireActivity()");
                str = Ga5.getPackageName();
            }
        }
        if (data == null) {
            String b2 = b((int) R.string.pardakht_error_invalid_request);
            j.a((Object) b2, "getString(R.string.pardakht_error_invalid_request)");
            a(b2, false);
            return false;
        }
        List<String> pathSegments = data.getPathSegments();
        if ((!j.a((Object) "pardakht", (Object) data.getHost())) || pathSegments.size() < 2) {
            String b3 = b((int) R.string.pardakht_error_invalid_request);
            j.a((Object) b3, "getString(R.string.pardakht_error_invalid_request)");
            a(b3, false);
            return false;
        } else if (!j.a((Object) "v1", (Object) pathSegments.get(0))) {
            String b4 = b((int) R.string.pardakht_error_not_supported);
            j.a((Object) b4, "getString(R.string.pardakht_error_not_supported)");
            a(b4, true);
            return false;
        } else {
            String str2 = pathSegments.get(1);
            if (str2 != null) {
                int hashCode = str2.hashCode();
                if (hashCode != -1314396462) {
                    if (hashCode == 110760 && str2.equals("pay")) {
                        if (str == null) {
                            String b5 = b((int) R.string.pardakht_error_called_improperly);
                            j.a((Object) b5, "getString(R.string.parda…_error_called_improperly)");
                            a(b5, true);
                            return false;
                        }
                        C0285i Ga6 = Ga();
                        j.a((Object) Ga6, "requireActivity()");
                        if (!j.a((Object) str, (Object) Ga6.getIntent().getStringExtra("DEALER_PACKAGE_NAME"))) {
                            Context Ha = Ha();
                            j.a((Object) Ha, "requireContext()");
                            if (!j.a((Object) str, (Object) Ha.getPackageName())) {
                                String b6 = b((int) R.string.pardakht_error_called_by_else);
                                j.a((Object) b6, "getString(R.string.pardakht_error_called_by_else)");
                                a(b6, true);
                                return false;
                            }
                        }
                        return true;
                    }
                } else if (str2.equals("buy_credit")) {
                    return true;
                }
            }
            String b7 = b((int) R.string.pardakht_error_invalid_request);
            j.a((Object) b7, "getString(R.string.pardakht_error_invalid_request)");
            a(b7, false);
            return false;
        }
    }

    public View e(int i2) {
        if (this.ma == null) {
            this.ma = new HashMap();
        }
        View view = (View) this.ma.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.ma.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public void ra() {
        this.la = null;
        super.ra();
    }

    public PaymentFlow Sa() {
        a aVar = this.ka;
        if (aVar != null) {
            String a2 = aVar.a();
            a aVar2 = this.ka;
            if (aVar2 != null) {
                String d2 = aVar2.d();
                if (d2 == null) {
                    d2 = "";
                }
                a aVar3 = this.ka;
                if (aVar3 != null) {
                    return new PaymentFlow(a2, d2, aVar3.c());
                }
                j.c("paymentConfigs");
                throw null;
            }
            j.c("paymentConfigs");
            throw null;
        }
        j.c("paymentConfigs");
        throw null;
    }

    public void a(Context context) {
        j.b(context, "context");
        c.c.a.n.s.a aVar = (c.c.a.n.s.a) (!(context instanceof c.c.a.n.s.a) ? null : context);
        if (aVar != null) {
            this.la = aVar;
            super.a(context);
            return;
        }
        throw new RuntimeException("this activity must implement InvoiceCallback");
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_start_payment, viewGroup, false);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        E a2 = G.a((Fragment) this, Ra()).a(c.c.a.n.s.f.b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        c.c.a.n.s.f.b bVar = (c.c.a.n.s.f.b) a2;
        h.a(this, bVar.e(), new StartPaymentFragment$onViewCreated$1$1(this));
        this.ja = bVar;
        if (Ya()) {
            this.ka = Ua();
            b.a(this, new StartFlowEvent(), null, null, 6, null);
            c.c.a.n.s.f.b bVar2 = this.ja;
            if (bVar2 != null) {
                a aVar = this.ka;
                if (aVar != null) {
                    bVar2.a(aVar.d());
                } else {
                    j.c("paymentConfigs");
                    throw null;
                }
            } else {
                j.c("viewModel");
                throw null;
            }
        }
    }

    public final void a(Resource<None> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) PaymentState.NotLoggedIn.f12168a)) {
                Xa();
            } else if (j.a((Object) d2, (Object) PaymentState.NavigateToCreditOptions.f12167a)) {
                Va();
            } else if (j.a((Object) d2, (Object) PaymentState.NavigateToBuyProduct.f12166a)) {
                Wa();
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                a(resource.c());
            } else {
                c.c.a.c.c.a.f4699b.a((Throwable) new RuntimeException("Illegal state"));
                a((ErrorModel) ErrorModel.UnExpected.INSTANCE);
            }
        }
    }

    public void a(int i2, int i3, Intent intent) {
        c.c.a.c.c.a aVar = c.c.a.c.c.a.f4699b;
        c.c.a.c.c.a.a(aVar, "onActivityResult :: requestCode = " + i2 + " , resultCode = " + i3, null, null, 6, null);
        if (i2 == 4000) {
            if (i3 == -1) {
                c.c.a.n.s.f.b bVar = this.ja;
                if (bVar != null) {
                    a aVar2 = this.ka;
                    if (aVar2 != null) {
                        bVar.a(aVar2.d());
                    } else {
                        j.c("paymentConfigs");
                        throw null;
                    }
                } else {
                    j.c("viewModel");
                    throw null;
                }
            } else {
                c.c.a.n.s.a aVar3 = this.la;
                if (aVar3 != null) {
                    aVar3.o();
                }
            }
        }
        super.a(i2, i3, intent);
    }

    public final void a(String str, boolean z) {
        if (z) {
            c.c.a.n.s.a aVar = this.la;
            if (aVar != null) {
                aVar.a();
                return;
            }
            return;
        }
        a((ErrorModel) new ErrorModel.Error(str));
    }

    public final void a(ErrorModel errorModel) {
        C0313j a2 = b.w.b.b.a(this);
        d.a aVar = c.c.a.n.s.b.d.f6841a;
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        c.a(a2, d.a.a(aVar, false, (ErrorModel) null, c.c.a.d.b.d.b(Ha, errorModel), (String) null, (String) null, 26, (Object) null));
    }
}
