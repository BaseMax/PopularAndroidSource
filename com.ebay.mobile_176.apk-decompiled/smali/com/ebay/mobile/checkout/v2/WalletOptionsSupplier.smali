.class Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;
.super Ljava/lang/Object;
.source "WalletOptionsSupplier.java"

# interfaces
.implements Lcom/ebay/nautilus/kernel/util/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/kernel/util/Supplier<",
        "Lcom/google/android/gms/wallet/Wallet$WalletOptions;",
        ">;"
    }
.end annotation


# instance fields
.field prefs:Lcom/ebay/common/Preferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/android/gms/wallet/Wallet$WalletOptions;
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;->prefs:Lcom/ebay/common/Preferences;

    .line 32
    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getGooglePayEnvironmentProd()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ebay/nautilus/kernel/dagger/KernelComponentHolder;->getOrCreateInstance()Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/dagger/KernelComponent;->getQaMode()Lcom/ebay/nautilus/base/QaMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/base/QaMode;->isQaMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 36
    :goto_1
    new-instance v0, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->setEnvironment(I)Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/wallet/Wallet$WalletOptions$Builder;->build()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;->get()Lcom/google/android/gms/wallet/Wallet$WalletOptions;

    move-result-object v0

    return-object v0
.end method
