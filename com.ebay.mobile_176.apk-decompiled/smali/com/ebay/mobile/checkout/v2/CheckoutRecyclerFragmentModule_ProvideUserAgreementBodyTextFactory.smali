.class public final Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;
.super Ljava/lang/Object;
.source "CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroidx/databinding/ObservableList<",
        "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;-><init>()V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;->INSTANCE:Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;
    .locals 1

    .line 24
    sget-object v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;->INSTANCE:Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;

    return-object v0
.end method

.method public static provideInstance()Landroidx/databinding/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableList<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;->proxyProvideUserAgreementBodyText()Landroidx/databinding/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method public static proxyProvideUserAgreementBodyText()Landroidx/databinding/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableList<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule;->provideUserAgreementBodyText()Landroidx/databinding/ObservableList;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 28
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/ObservableList;

    return-object v0
.end method


# virtual methods
.method public get()Landroidx/databinding/ObservableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableList<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    .line 16
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;->provideInstance()Landroidx/databinding/ObservableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule_ProvideUserAgreementBodyTextFactory;->get()Landroidx/databinding/ObservableList;

    move-result-object v0

    return-object v0
.end method
