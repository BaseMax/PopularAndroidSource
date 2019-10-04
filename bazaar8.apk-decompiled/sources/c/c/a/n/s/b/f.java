package c.c.a.n.s.b;

import c.c.a.c.h.g;
import c.c.a.e.d.m.b.b.f;
import com.crashlytics.android.core.CrashlyticsController;
import com.farsitel.bazaar.core.model.PaymentState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.feature.payment.PurchasedItemData;
import com.farsitel.bazaar.data.feature.payment.UserActionData;
import com.farsitel.bazaar.ui.payment.handler.PaymentGatewayHandler;
import h.f.b.j;

/* compiled from: GatewayPaymentViewModel.kt */
public final class f implements PaymentGatewayHandler.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f6853a;

    public f(g gVar) {
        this.f6853a = gVar;
    }

    public void a(String str, String str2, String str3) {
        j.b(str, "paymentData");
        j.b(str2, "sign");
        j.b(str3, "developerPayload");
        this.f6853a.f6857g.i();
        g a2 = this.f6853a.f6854d;
        Resource resource = new Resource(PaymentState.PurchaseProductCompleted.f12170a, new PurchasedItemData(str, str2), null, 4, null);
        a2.a(resource);
    }

    public void a() {
        g a2 = this.f6853a.f6854d;
        Resource resource = new Resource(PaymentState.PurchaseCreditCompleted.f12169a, null, null, 6, null);
        a2.a(resource);
    }

    public void a(c.c.a.e.d.m.b.b.f fVar) {
        j.b(fVar, "gatewayDataTypes");
        if (fVar instanceof f.b) {
            g a2 = this.f6853a.f6854d;
            Resource resource = new Resource(PaymentState.UserAction.f12171a, new UserActionData(UserActionData.Action.WEB_VIEW, ((f.b) fVar).a()), null, 4, null);
            a2.a(resource);
        }
    }

    public void a(ErrorModel errorModel) {
        j.b(errorModel, CrashlyticsController.EVENT_TYPE_LOGGED);
        this.f6853a.f6854d.a(new Resource(ResourceState.Error.f12177a, null, errorModel));
    }
}
