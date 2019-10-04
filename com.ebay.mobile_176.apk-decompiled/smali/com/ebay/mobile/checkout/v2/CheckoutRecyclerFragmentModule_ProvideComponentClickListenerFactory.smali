.class public final Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;
.super Ljava/lang/Object;
.source "CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final targetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/fragment/app/Fragment;",
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
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;->targetProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;"
        }
    .end annotation

    .line 25
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;->proxyProvideComponentClickListener(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideComponentClickListener(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule;->provideComponentClickListener(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;->targetProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideComponentClickListenerFactory;->get()Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    move-result-object v0

    return-object v0
.end method
