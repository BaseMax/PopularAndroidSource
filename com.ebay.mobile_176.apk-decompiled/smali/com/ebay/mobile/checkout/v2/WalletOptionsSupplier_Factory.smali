.class public final Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;
.super Ljava/lang/Object;
.source "WalletOptionsSupplier_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;",
        ">;"
    }
.end annotation


# instance fields
.field private final prefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;->prefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newWalletOptionsSupplier()Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;
    .locals 1

    .line 31
    new-instance v0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;-><init>()V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;-><init>()V

    .line 22
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/Preferences;

    invoke-static {v0, p0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_MembersInjector;->injectPrefs(Ljava/lang/Object;Lcom/ebay/common/Preferences;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;->prefsProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_Factory;->get()Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;

    move-result-object v0

    return-object v0
.end method
