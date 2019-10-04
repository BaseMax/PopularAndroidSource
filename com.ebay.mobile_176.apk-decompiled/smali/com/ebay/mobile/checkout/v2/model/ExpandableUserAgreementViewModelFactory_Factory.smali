.class public final Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;
.super Ljava/lang/Object;
.source "ExpandableUserAgreementViewModelFactory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final viewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
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
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;->viewModelProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newExpandableUserAgreementViewModelFactory(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
            ">;)",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;"
        }
    .end annotation

    .line 23
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;->viewModelProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory_Factory;->get()Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;

    move-result-object v0

    return-object v0
.end method
