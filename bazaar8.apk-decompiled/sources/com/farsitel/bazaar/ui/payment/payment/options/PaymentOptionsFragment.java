package com.farsitel.bazaar.ui.payment.payment.options;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b.o.a.C0285i;
import b.r.E;
import b.r.G;
import b.w.C0313j;
import b.y.a.P;
import c.c.a.d.b.d;
import c.c.a.d.b.l;
import c.c.a.d.g.a.i;
import c.c.a.e;
import c.c.a.n.c.a.b;
import c.c.a.n.s.e.a.a;
import c.c.a.n.s.e.a.c;
import c.c.a.n.s.e.a.f;
import c.c.a.n.s.e.a.g;
import c.c.a.n.s.e.a.h;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.AlreadyBoughtEvent;
import com.farsitel.bazaar.analytics.model.what.BuyProductWithGatewayClick;
import com.farsitel.bazaar.analytics.model.what.BuyProductWithNotEnoughCreditClick;
import com.farsitel.bazaar.analytics.model.what.DialogVisit;
import com.farsitel.bazaar.analytics.model.what.ErrorHappenedEvent;
import com.farsitel.bazaar.analytics.model.what.LoadPaymentOptionsEvent;
import com.farsitel.bazaar.analytics.model.where.PaymentOptionsScreen;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.feature.payment.PaymentData;
import com.farsitel.bazaar.data.feature.payment.PaymentGateway;
import com.farsitel.bazaar.data.feature.payment.PaymentInfo;
import com.farsitel.bazaar.data.feature.payment.PurchasedItemData;
import com.farsitel.bazaar.widget.LoadingButton;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import h.f.b.j;
import h.k.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: PaymentOptionsFragment.kt */
public final class PaymentOptionsFragment extends b implements c {
    public h ia;
    public a ja;
    public long ka = -1;
    public String la = "";
    public String ma = "";
    public BuyProductArgs na;
    public HashMap oa;

    public void La() {
        HashMap hashMap = this.oa;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public final void Ua() {
        NestedScrollView nestedScrollView = (NestedScrollView) e(e.contentContainer);
        if (nestedScrollView != null) {
            l.c(nestedScrollView);
        }
        FrameLayout frameLayout = (FrameLayout) e(e.loadingContainer);
        if (frameLayout != null) {
            l.a(frameLayout);
        }
    }

    public final void Va() {
        h hVar = this.ia;
        if (hVar != null) {
            BuyProductArgs buyProductArgs = this.na;
            if (buyProductArgs != null) {
                String a2 = buyProductArgs.a();
                BuyProductArgs buyProductArgs2 = this.na;
                if (buyProductArgs2 != null) {
                    hVar.a(a2, buyProductArgs2.d());
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

    public final void Wa() {
        a aVar = this.ja;
        if (aVar != null) {
            PaymentGateway f2 = aVar.f();
            String h2 = f2.h();
            if (j.a((Object) h2, (Object) PaymentGatewayType.GIFT_CARD.f())) {
                c.c.a.c.c.a.f4699b.a(new Throwable("Not Implemented"));
                a((ErrorModel) ErrorModel.NotImplemented.INSTANCE);
            } else if (j.a((Object) h2, (Object) PaymentGatewayType.CREDIT.f())) {
                a(f2);
            } else {
                c(f2);
            }
        } else {
            j.c("paymentOptionsAdapter");
            throw null;
        }
    }

    public final void Xa() {
        NestedScrollView nestedScrollView = (NestedScrollView) e(e.contentContainer);
        if (nestedScrollView != null) {
            l.a(nestedScrollView);
        }
        FrameLayout frameLayout = (FrameLayout) e(e.loadingContainer);
        if (frameLayout != null) {
            l.c(frameLayout);
        }
    }

    public final boolean b(PaymentGateway paymentGateway) {
        return j.a((Object) paymentGateway.h(), (Object) PaymentGatewayType.CREDIT.f()) && this.ka < paymentGateway.e();
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        f.a aVar = f.f6878a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.na = aVar.a(C).a();
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

    public PaymentOptionsScreen Sa() {
        BuyProductArgs buyProductArgs = this.na;
        if (buyProductArgs != null) {
            String a2 = buyProductArgs.a();
            BuyProductArgs buyProductArgs2 = this.na;
            if (buyProductArgs2 != null) {
                String d2 = buyProductArgs2.d();
                BuyProductArgs buyProductArgs3 = this.na;
                if (buyProductArgs3 != null) {
                    return new PaymentOptionsScreen(a2, d2, buyProductArgs3.c());
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

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        return layoutInflater.inflate(R.layout.fragment_payment_options, viewGroup, false);
    }

    public final void c(PaymentGateway paymentGateway) {
        b.a(this, new BuyProductWithGatewayClick(paymentGateway.e(), paymentGateway.b()), null, null, 6, null);
        C0313j a2 = b.w.b.b.a(this);
        g.a aVar = g.f6880a;
        BuyProductArgs buyProductArgs = this.na;
        if (buyProductArgs != null) {
            String a3 = buyProductArgs.a();
            BuyProductArgs buyProductArgs2 = this.na;
            if (buyProductArgs2 != null) {
                String d2 = buyProductArgs2.d();
                BuyProductArgs buyProductArgs3 = this.na;
                if (buyProductArgs3 != null) {
                    String b2 = buyProductArgs3.b();
                    long e2 = paymentGateway.e();
                    BuyProductArgs buyProductArgs4 = this.na;
                    if (buyProductArgs4 != null) {
                        c.c.a.i.c.a(a2, g.a.a(aVar, a3, d2, b2, e2, buyProductArgs4.c(), paymentGateway.h(), paymentGateway.b(), false, null, 256, null));
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
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        super.a(view, bundle);
        b.a(this, new DialogVisit(c.c.a.c.d.e.a()), null, null, 6, null);
        E a2 = G.a((Fragment) this, Ra()).a(h.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        h hVar = (h) a2;
        c.c.a.d.b.h.a(this, hVar.e(), new PaymentOptionsFragment$onViewCreated$1$1(this));
        this.ia = hVar;
        Va();
    }

    public final void a(long j2, String str, String str2, String str3, String str4, String str5, String str6, ArrayList<PaymentGateway> arrayList) {
        long j3 = j2;
        String str7 = str6;
        Ua();
        this.ka = j3;
        this.la = str5;
        this.ma = str7;
        b.a(this, new LoadPaymentOptionsEvent(arrayList.size(), j3), null, null, 6, null);
        if (str != null) {
            i iVar = i.f4812a;
            AppCompatImageView appCompatImageView = (AppCompatImageView) e(e.dealerIconImageView);
            j.a((Object) appCompatImageView, "dealerIconImageView");
            i.a(iVar, appCompatImageView, str, null, Integer.valueOf(R.drawable.bg_sample_app), null, 0, 52, null);
        } else {
            C0285i x = x();
            if (x != null) {
                PackageManager packageManager = x.getPackageManager();
                if (packageManager != null) {
                    Drawable a2 = c.c.a.d.b.j.a(packageManager, str2);
                    if (a2 != null) {
                        ((AppCompatImageView) e(e.dealerIconImageView)).setImageDrawable(a2);
                    }
                }
            }
        }
        LocalAwareTextView localAwareTextView = (LocalAwareTextView) e(e.dealerNameTextView);
        j.a((Object) localAwareTextView, "dealerNameTextView");
        localAwareTextView.setText(str3);
        LocalAwareTextView localAwareTextView2 = (LocalAwareTextView) e(e.productNameTextView);
        j.a((Object) localAwareTextView2, "productNameTextView");
        localAwareTextView2.setText(str4);
        ((LoadingButton) e(e.payButton)).setOnClickListener(new e(this));
        if (str6.length() > 0) {
            View e2 = e(e.agreementDivider);
            j.a((Object) e2, "agreementDivider");
            l.c(e2);
            AppCompatTextView appCompatTextView = (AppCompatTextView) e(e.agreementTextView);
            l.c(appCompatTextView);
            Object[] objArr = new Object[1];
            if (str7 != null) {
                objArr[0] = n.f(str6).toString();
                appCompatTextView.setText(a((int) R.string.agreement_place_holder, objArr));
            } else {
                throw new TypeCastException("null cannot be cast to non-null type kotlin.CharSequence");
            }
        }
        this.ja = new a(this);
        a aVar = this.ja;
        if (aVar != null) {
            aVar.e().addAll(arrayList);
            RecyclerView recyclerView = (RecyclerView) e(e.paymentGatewaysRecyclerView);
            recyclerView.setHasFixedSize(true);
            if (recyclerView.getItemAnimator() instanceof P) {
                RecyclerView.f itemAnimator = recyclerView.getItemAnimator();
                if (itemAnimator != null) {
                    ((P) itemAnimator).a(false);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator");
                }
            }
            a aVar2 = this.ja;
            if (aVar2 != null) {
                recyclerView.setAdapter(aVar2);
                recyclerView.setLayoutManager(new LinearLayoutManager(Ha(), 0, false));
                recyclerView.post(new d(this));
                return;
            }
            j.c("paymentOptionsAdapter");
            throw null;
        }
        j.c("paymentOptionsAdapter");
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x00c2  */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x00cf  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00e6  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0213  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(int r9) {
        /*
            r8 = this;
            boolean r0 = r8.ea()
            if (r0 != 0) goto L_0x0007
            return
        L_0x0007:
            c.c.a.n.s.e.a.a r0 = r8.ja
            r1 = 0
            java.lang.String r2 = "paymentOptionsAdapter"
            if (r0 == 0) goto L_0x021d
            r0.f(r9)
            c.c.a.n.s.e.a.a r9 = r8.ja
            if (r9 == 0) goto L_0x0219
            com.farsitel.bazaar.data.feature.payment.PaymentGateway r9 = r9.f()
            int r0 = c.c.a.e.descriptionTextView
            android.view.View r0 = r8.e(r0)
            android.widget.TextView r0 = (android.widget.TextView) r0
            if (r0 == 0) goto L_0x002a
            java.lang.String r1 = r9.c()
            r0.setText(r1)
        L_0x002a:
            java.lang.String r0 = r9.f()
            int r0 = r0.length()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L_0x0038
            r0 = 1
            goto L_0x0039
        L_0x0038:
            r0 = 0
        L_0x0039:
            if (r0 == 0) goto L_0x0049
            int r0 = c.c.a.e.subDescriptionTextView
            android.view.View r0 = r8.e(r0)
            android.widget.TextView r0 = (android.widget.TextView) r0
            if (r0 == 0) goto L_0x005d
            c.c.a.d.b.l.a(r0)
            goto L_0x005d
        L_0x0049:
            int r0 = c.c.a.e.subDescriptionTextView
            android.view.View r0 = r8.e(r0)
            android.widget.TextView r0 = (android.widget.TextView) r0
            if (r0 == 0) goto L_0x005d
            c.c.a.d.b.l.c(r0)
            java.lang.String r3 = r9.f()
            r0.setText(r3)
        L_0x005d:
            java.lang.String r0 = r9.h()
            com.farsitel.bazaar.ui.payment.payment.options.PaymentGatewayType r3 = com.farsitel.bazaar.ui.payment.payment.options.PaymentGatewayType.CREDIT
            java.lang.String r3 = r3.f()
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            java.lang.String r3 = "creditTextView"
            if (r0 == 0) goto L_0x00a6
            java.lang.String r0 = r8.la
            int r0 = r0.length()
            if (r0 <= 0) goto L_0x0079
            r0 = 1
            goto L_0x007a
        L_0x0079:
            r0 = 0
        L_0x007a:
            if (r0 == 0) goto L_0x00a6
            int r0 = c.c.a.e.creditTextView
            android.view.View r0 = r8.e(r0)
            androidx.appcompat.widget.AppCompatTextView r0 = (androidx.appcompat.widget.AppCompatTextView) r0
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r3)
            r4 = 2131755581(0x7f10023d, float:1.9142045E38)
            java.lang.Object[] r5 = new java.lang.Object[r1]
            java.lang.String r6 = r8.la
            r5[r2] = r6
            java.lang.String r4 = r8.a((int) r4, (java.lang.Object[]) r5)
            r0.setText(r4)
            int r0 = c.c.a.e.creditTextView
            android.view.View r0 = r8.e(r0)
            androidx.appcompat.widget.AppCompatTextView r0 = (androidx.appcompat.widget.AppCompatTextView) r0
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r3)
            c.c.a.d.b.l.c(r0)
            goto L_0x00b4
        L_0x00a6:
            int r0 = c.c.a.e.creditTextView
            android.view.View r0 = r8.e(r0)
            androidx.appcompat.widget.AppCompatTextView r0 = (androidx.appcompat.widget.AppCompatTextView) r0
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r3)
            c.c.a.d.b.l.a(r0)
        L_0x00b4:
            int r0 = c.c.a.e.payButton
            android.view.View r0 = r8.e(r0)
            com.farsitel.bazaar.widget.LoadingButton r0 = (com.farsitel.bazaar.widget.LoadingButton) r0
            boolean r3 = r8.b(r9)
            if (r3 == 0) goto L_0x00cf
            r3 = 2131755250(0x7f1000f2, float:1.9141374E38)
            java.lang.String r3 = r8.b((int) r3)
            java.lang.String r4 = "getString(R.string.increase_credit)"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
            goto L_0x00db
        L_0x00cf:
            r3 = 2131755362(0x7f100162, float:1.9141601E38)
            java.lang.String r3 = r8.b((int) r3)
            java.lang.String r4 = "getString(R.string.pay)"
            h.f.b.j.a((java.lang.Object) r3, (java.lang.String) r4)
        L_0x00db:
            r0.setText(r3)
            java.lang.String r0 = r9.a()
            java.lang.String r3 = "null cannot be cast to non-null type kotlin.CharSequence"
            if (r0 == 0) goto L_0x0213
            java.lang.CharSequence r0 = h.k.n.f(r0)
            java.lang.String r0 = r0.toString()
            int r0 = r0.length()
            if (r0 != 0) goto L_0x00f6
            r0 = 1
            goto L_0x00f7
        L_0x00f6:
            r0 = 0
        L_0x00f7:
            java.lang.String r4 = "agreementDivider"
            r5 = 2131755043(0x7f100023, float:1.9140954E38)
            if (r0 == 0) goto L_0x016f
            java.lang.String r9 = r8.ma
            if (r9 == 0) goto L_0x0169
            java.lang.CharSequence r9 = h.k.n.f(r9)
            java.lang.String r9 = r9.toString()
            int r9 = r9.length()
            if (r9 != 0) goto L_0x0112
            r9 = 1
            goto L_0x0113
        L_0x0112:
            r9 = 0
        L_0x0113:
            if (r9 == 0) goto L_0x0133
            int r9 = c.c.a.e.agreementDivider
            android.view.View r9 = r8.e(r9)
            h.f.b.j.a((java.lang.Object) r9, (java.lang.String) r4)
            c.c.a.d.b.l.a(r9)
            int r9 = c.c.a.e.agreementTextView
            android.view.View r9 = r8.e(r9)
            androidx.appcompat.widget.AppCompatTextView r9 = (androidx.appcompat.widget.AppCompatTextView) r9
            java.lang.String r0 = "agreementTextView"
            h.f.b.j.a((java.lang.Object) r9, (java.lang.String) r0)
            c.c.a.d.b.l.a(r9)
            goto L_0x0200
        L_0x0133:
            int r9 = c.c.a.e.agreementDivider
            android.view.View r9 = r8.e(r9)
            h.f.b.j.a((java.lang.Object) r9, (java.lang.String) r4)
            c.c.a.d.b.l.c(r9)
            int r9 = c.c.a.e.agreementTextView
            android.view.View r9 = r8.e(r9)
            androidx.appcompat.widget.AppCompatTextView r9 = (androidx.appcompat.widget.AppCompatTextView) r9
            c.c.a.d.b.l.c(r9)
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r1 = r8.ma
            if (r1 == 0) goto L_0x0163
            java.lang.CharSequence r1 = h.k.n.f(r1)
            java.lang.String r1 = r1.toString()
            r0[r2] = r1
            java.lang.String r0 = r8.a((int) r5, (java.lang.Object[]) r0)
            r9.setText(r0)
            goto L_0x0200
        L_0x0163:
            kotlin.TypeCastException r9 = new kotlin.TypeCastException
            r9.<init>(r3)
            throw r9
        L_0x0169:
            kotlin.TypeCastException r9 = new kotlin.TypeCastException
            r9.<init>(r3)
            throw r9
        L_0x016f:
            java.lang.String r0 = r8.ma
            if (r0 == 0) goto L_0x020d
            java.lang.CharSequence r0 = h.k.n.f(r0)
            java.lang.String r0 = r0.toString()
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0183
            r0 = 1
            goto L_0x0184
        L_0x0183:
            r0 = 0
        L_0x0184:
            if (r0 == 0) goto L_0x01a3
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r9 = r9.a()
            if (r9 == 0) goto L_0x019d
            java.lang.CharSequence r9 = h.k.n.f(r9)
            java.lang.String r9 = r9.toString()
            r0[r2] = r9
            java.lang.String r9 = r8.a((int) r5, (java.lang.Object[]) r0)
            goto L_0x01e1
        L_0x019d:
            kotlin.TypeCastException r9 = new kotlin.TypeCastException
            r9.<init>(r3)
            throw r9
        L_0x01a3:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Object[] r6 = new java.lang.Object[r1]
            java.lang.String r7 = r8.ma
            if (r7 == 0) goto L_0x0207
            java.lang.CharSequence r7 = h.k.n.f(r7)
            java.lang.String r7 = r7.toString()
            r6[r2] = r7
            java.lang.String r6 = r8.a((int) r5, (java.lang.Object[]) r6)
            r0.append(r6)
            java.lang.String r6 = "\n\n"
            r0.append(r6)
            java.lang.Object[] r1 = new java.lang.Object[r1]
            java.lang.String r9 = r9.a()
            if (r9 == 0) goto L_0x0201
            java.lang.CharSequence r9 = h.k.n.f(r9)
            java.lang.String r9 = r9.toString()
            r1[r2] = r9
            java.lang.String r9 = r8.a((int) r5, (java.lang.Object[]) r1)
            r0.append(r9)
            java.lang.String r9 = r0.toString()
        L_0x01e1:
            java.lang.String r0 = "if (agreementDescription…ent.trim())\n            }"
            h.f.b.j.a((java.lang.Object) r9, (java.lang.String) r0)
            int r0 = c.c.a.e.agreementDivider
            android.view.View r0 = r8.e(r0)
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r4)
            c.c.a.d.b.l.c(r0)
            int r0 = c.c.a.e.agreementTextView
            android.view.View r0 = r8.e(r0)
            androidx.appcompat.widget.AppCompatTextView r0 = (androidx.appcompat.widget.AppCompatTextView) r0
            c.c.a.d.b.l.c(r0)
            r0.setText(r9)
        L_0x0200:
            return
        L_0x0201:
            kotlin.TypeCastException r9 = new kotlin.TypeCastException
            r9.<init>(r3)
            throw r9
        L_0x0207:
            kotlin.TypeCastException r9 = new kotlin.TypeCastException
            r9.<init>(r3)
            throw r9
        L_0x020d:
            kotlin.TypeCastException r9 = new kotlin.TypeCastException
            r9.<init>(r3)
            throw r9
        L_0x0213:
            kotlin.TypeCastException r9 = new kotlin.TypeCastException
            r9.<init>(r3)
            throw r9
        L_0x0219:
            h.f.b.j.c(r2)
            throw r1
        L_0x021d:
            h.f.b.j.c(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.payment.payment.options.PaymentOptionsFragment.a(int):void");
    }

    public final void a(PaymentGateway paymentGateway) {
        if (b(paymentGateway)) {
            b.a(this, new BuyProductWithNotEnoughCreditClick(paymentGateway.e()), null, null, 6, null);
            C0313j a2 = b.w.b.b.a(this);
            g.a aVar = g.f6880a;
            long e2 = paymentGateway.e();
            BuyProductArgs buyProductArgs = this.na;
            if (buyProductArgs != null) {
                c.c.a.i.c.a(a2, aVar.a(e2, buyProductArgs));
            } else {
                j.c("args");
                throw null;
            }
        } else {
            c(paymentGateway);
        }
    }

    public final void a(Resource<? extends PaymentData> resource) {
        if (resource != null) {
            ResourceState d2 = resource.d();
            if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
                Xa();
            } else if (j.a((Object) d2, (Object) PaymentState.BuyProductDataReceived.f12164a)) {
                Object a2 = resource.a();
                if (a2 != null) {
                    a((PaymentInfo) a2);
                    return;
                }
                throw new TypeCastException("null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.PaymentInfo");
            } else if (j.a((Object) d2, (Object) PaymentState.AlreadyBought.f12162a)) {
                Object a3 = resource.a();
                if (!(a3 instanceof PurchasedItemData)) {
                    a3 = null;
                }
                String b2 = b((int) R.string.already_bought);
                j.a((Object) b2, "getString(R.string.already_bought)");
                a((PurchasedItemData) a3, b2);
            } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
                a(resource.c());
            }
        }
    }

    public final void a(PaymentInfo paymentInfo) {
        try {
            Long b2 = paymentInfo.b();
            if (b2 != null) {
                long longValue = b2.longValue();
                String d2 = paymentInfo.d();
                BuyProductArgs buyProductArgs = this.na;
                if (buyProductArgs != null) {
                    String a2 = buyProductArgs.a();
                    String e2 = paymentInfo.e();
                    if (e2 != null) {
                        String h2 = paymentInfo.h();
                        if (h2 != null) {
                            String c2 = paymentInfo.c();
                            if (c2 != null) {
                                String a3 = paymentInfo.a();
                                if (a3 == null) {
                                    a3 = "";
                                }
                                String str = a3;
                                List<PaymentGateway> g2 = paymentInfo.g();
                                if (g2 != null) {
                                    a(longValue, d2, a2, e2, h2, c2, str, (ArrayList) g2);
                                    return;
                                }
                                throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.ArrayList<com.farsitel.bazaar.data.feature.payment.PaymentGateway> /* = java.util.ArrayList<com.farsitel.bazaar.data.feature.payment.PaymentGateway> */");
                            }
                            j.a();
                            throw null;
                        }
                        j.a();
                        throw null;
                    }
                    j.a();
                    throw null;
                }
                j.c("args");
                throw null;
            }
            j.a();
            throw null;
        } catch (NullPointerException e3) {
            c.c.a.c.c.a.f4699b.a(new Throwable("Something is not supposed to be null", e3));
            a((ErrorModel) ErrorModel.UnExpected.INSTANCE);
        }
    }

    public final void a(PurchasedItemData purchasedItemData, String str) {
        b.a(this, new AlreadyBoughtEvent(), null, null, 6, null);
        c.c.a.i.c.a(b.w.b.b.a(this), g.a.a(g.f6880a, true, null, str, purchasedItemData != null ? purchasedItemData.a() : null, purchasedItemData != null ? purchasedItemData.b() : null, 2, null));
    }

    public final void a(ErrorModel errorModel) {
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        b.a(this, new ErrorHappenedEvent(d.b(Ha, errorModel)), null, null, 6, null);
        C0313j a2 = b.w.b.b.a(this);
        g.a aVar = g.f6880a;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        c.c.a.i.c.a(a2, g.a.a(aVar, false, errorModel, d.b(Ha2, errorModel), null, null, 24, null));
    }
}
