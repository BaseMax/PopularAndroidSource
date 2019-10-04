package com.farsitel.bazaar.core.model;

import com.farsitel.bazaar.core.model.ResourceState;
import h.f.b.f;

/* compiled from: ResourceState.kt */
public abstract class PaymentState extends ResourceState.CustomState {

    /* compiled from: ResourceState.kt */
    public static final class AlreadyBought extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final AlreadyBought f12162a = new AlreadyBought();

        public AlreadyBought() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class BuyCreditMethodsReceived extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final BuyCreditMethodsReceived f12163a = new BuyCreditMethodsReceived();

        public BuyCreditMethodsReceived() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class BuyProductDataReceived extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final BuyProductDataReceived f12164a = new BuyProductDataReceived();

        public BuyProductDataReceived() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class CreditOptionReceived extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final CreditOptionReceived f12165a = new CreditOptionReceived();

        public CreditOptionReceived() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class NavigateToBuyProduct extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final NavigateToBuyProduct f12166a = new NavigateToBuyProduct();

        public NavigateToBuyProduct() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class NavigateToCreditOptions extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final NavigateToCreditOptions f12167a = new NavigateToCreditOptions();

        public NavigateToCreditOptions() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class NotLoggedIn extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final NotLoggedIn f12168a = new NotLoggedIn();

        public NotLoggedIn() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class PurchaseCreditCompleted extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final PurchaseCreditCompleted f12169a = new PurchaseCreditCompleted();

        public PurchaseCreditCompleted() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class PurchaseProductCompleted extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final PurchaseProductCompleted f12170a = new PurchaseProductCompleted();

        public PurchaseProductCompleted() {
            super(null);
        }
    }

    /* compiled from: ResourceState.kt */
    public static final class UserAction extends PaymentState {

        /* renamed from: a  reason: collision with root package name */
        public static final UserAction f12171a = new UserAction();

        public UserAction() {
            super(null);
        }
    }

    public PaymentState() {
    }

    public /* synthetic */ PaymentState(f fVar) {
        this();
    }
}
