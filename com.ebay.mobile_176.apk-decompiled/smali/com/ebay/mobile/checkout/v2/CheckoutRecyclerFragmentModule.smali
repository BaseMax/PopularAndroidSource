.class public abstract Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragmentModule;
.super Ljava/lang/Object;
.source "CheckoutRecyclerFragmentModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/ebay/mobile/checkout/v2/CheckoutViewModelFactoryModule;
    }
.end annotation


# static fields
.field public static final NAMED_QUALIFIER_USER_AGREEMENT_BODY_TEXT:Ljava/lang/String; = "user_agreement_body_text"

.field public static final NAMED_QUALIFIER_USER_AGREEMENT_PREVIEW_TEXT:Ljava/lang/String; = "user_agreement_preview_text"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static provideComponentClickListener(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 31
    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;->builder(Landroidx/fragment/app/Fragment;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener$Builder;->setExecutionHandlers(Ljava/lang/Object;)Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener$Builder;->build()Lcom/ebay/nautilus/shell/uxcomponents/ComponentClickListener;

    move-result-object p0

    return-object p0
.end method

.method static provideUserAgreementBodyText()Landroidx/databinding/ObservableList;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableList<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "user_agreement_body_text"
    .end annotation

    .line 45
    new-instance v0, Landroidx/databinding/ObservableArrayList;

    invoke-direct {v0}, Landroidx/databinding/ObservableArrayList;-><init>()V

    return-object v0
.end method

.method static provideUserAgreementPreviewText()Landroidx/databinding/ObservableList;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableList<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "user_agreement_preview_text"
    .end annotation

    .line 38
    new-instance v0, Landroidx/databinding/ObservableArrayList;

    invoke-direct {v0}, Landroidx/databinding/ObservableArrayList;-><init>()V

    return-object v0
.end method
