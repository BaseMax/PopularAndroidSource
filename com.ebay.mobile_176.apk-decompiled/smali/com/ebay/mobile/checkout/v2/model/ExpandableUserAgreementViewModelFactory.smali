.class public Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;
.super Ljava/lang/Object;
.source "ExpandableUserAgreementViewModelFactory.java"


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

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;->viewModelProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;I)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModelFactory;->viewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->setUserAgreements(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/UserAgreement;Lcom/ebay/mobile/checkout/v2/model/TextualEntryViewModel;I)Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    move-result-object p1

    return-object p1
.end method
