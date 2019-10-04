.class public final Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;
.super Ljava/lang/Object;
.source "CheckoutRecyclerFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final checkoutViewModelFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceConfigurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final ebayContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mainThreadHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/MainThreadHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final preferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/MainThreadHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->deviceConfigurationProvider:Ljavax/inject/Provider;

    .line 31
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->mainThreadHandlerProvider:Ljavax/inject/Provider;

    .line 32
    iput-object p3, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->checkoutViewModelFactoryProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p4, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->preferencesProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p5, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/domain/content/MainThreadHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/common/Preferences;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v6, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static injectCheckoutViewModelFactory(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->checkoutViewModelFactory:Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    return-void
.end method

.method public static injectEbayContext(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    return-void
.end method

.method public static injectMainThreadHandler(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;Lcom/ebay/nautilus/domain/content/MainThreadHandler;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->mainThreadHandler:Lcom/ebay/nautilus/domain/content/MainThreadHandler;

    return-void
.end method

.method public static injectPreferences(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;Lcom/ebay/common/Preferences;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->preferences:Lcom/ebay/common/Preferences;

    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->deviceConfigurationProvider:Ljavax/inject/Provider;

    .line 54
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    .line 53
    invoke-static {p1, v0}, Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment_MembersInjector;->injectDeviceConfiguration(Lcom/ebay/mobile/payments/experience/BasePaymentsRecyclerFragment;Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->mainThreadHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/MainThreadHandler;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->injectMainThreadHandler(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;Lcom/ebay/nautilus/domain/content/MainThreadHandler;)V

    .line 56
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->checkoutViewModelFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->injectCheckoutViewModelFactory(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactory;)V

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->preferencesProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/common/Preferences;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->injectPreferences(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;Lcom/ebay/common/Preferences;)V

    .line 58
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->ebayContextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-static {p1, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->injectEbayContext(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment_MembersInjector;->injectMembers(Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;)V

    return-void
.end method
