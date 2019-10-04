.class public final Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;
.super Ljava/lang/Object;
.source "CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/gms/wallet/PaymentsClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final walletOptionsSupplierProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;->activityProvider:Ljavax/inject/Provider;

    .line 20
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;->walletOptionsSupplierProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/gms/wallet/PaymentsClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/app/Activity;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;",
            ">;)",
            "Lcom/google/android/gms/wallet/PaymentsClient;"
        }
    .end annotation

    .line 32
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;->proxyProvideGooglePaymentsClient(Landroid/app/Activity;Ljava/lang/Object;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideGooglePaymentsClient(Landroid/app/Activity;Ljava/lang/Object;)Lcom/google/android/gms/wallet/PaymentsClient;
    .locals 0

    .line 44
    check-cast p1, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;

    .line 45
    invoke-static {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule;->provideGooglePaymentsClient(Landroid/app/Activity;Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 44
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/wallet/PaymentsClient;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/android/gms/wallet/PaymentsClient;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;->activityProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;->walletOptionsSupplierProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule_ProvideGooglePaymentsClientFactory;->get()Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object v0

    return-object v0
.end method
