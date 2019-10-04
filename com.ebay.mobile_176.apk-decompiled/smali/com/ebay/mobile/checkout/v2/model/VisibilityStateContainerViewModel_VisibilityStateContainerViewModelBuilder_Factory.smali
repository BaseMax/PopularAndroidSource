.class public final Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;
.super Ljava/lang/Object;
.source "VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;-><init>()V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;->INSTANCE:Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;
    .locals 1

    .line 25
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;->INSTANCE:Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;

    return-object v0
.end method

.method public static newVisibilityStateContainerViewModelBuilder()Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;
    .locals 1

    .line 30
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;
    .locals 1

    .line 20
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;
    .locals 1

    .line 15
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;->provideInstance()Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel_VisibilityStateContainerViewModelBuilder_Factory;->get()Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;

    move-result-object v0

    return-object v0
.end method
