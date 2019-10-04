.class public abstract Lcom/ebay/mobile/checkout/v2/CheckoutMixedActivityModule;
.super Ljava/lang/Object;
.source "CheckoutMixedActivityModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideGoogleApiAvailability()Lcom/google/android/gms/common/GoogleApiAvailability;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 42
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    return-object v0
.end method

.method static provideGooglePaymentsClient(Landroid/app/Activity;Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;)Lcom/google/android/gms/wallet/PaymentsClient;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 33
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;->get()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/wallet/Wallet;->getPaymentsClient(Landroid/app/Activity;Lcom/google/android/gms/wallet/Wallet$WalletOptions;)Lcom/google/android/gms/wallet/PaymentsClient;

    move-result-object p0

    return-object p0
.end method
