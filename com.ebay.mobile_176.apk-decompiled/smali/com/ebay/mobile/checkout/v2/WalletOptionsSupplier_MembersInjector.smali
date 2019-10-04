.class public final Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_MembersInjector;
.super Ljava/lang/Object;
.source "WalletOptionsSupplier_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
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

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_MembersInjector;->prefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_MembersInjector;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectPrefs(Ljava/lang/Object;Lcom/ebay/common/Preferences;)V
    .locals 0

    .line 26
    check-cast p0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;->prefs:Lcom/ebay/common/Preferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_MembersInjector;->prefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/Preferences;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_MembersInjector;->injectPrefs(Ljava/lang/Object;Lcom/ebay/common/Preferences;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier_MembersInjector;->injectMembers(Lcom/ebay/mobile/checkout/v2/WalletOptionsSupplier;)V

    return-void
.end method
