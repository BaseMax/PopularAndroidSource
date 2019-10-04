.class public final Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;
.super Ljava/lang/Object;
.source "ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;-><init>()V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;->INSTANCE:Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;
    .locals 1

    .line 26
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;->INSTANCE:Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;

    return-object v0
.end method

.method public static newExpandableFooterContainerViewModelBuilder()Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;
    .locals 1

    .line 31
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;
    .locals 1

    .line 21
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;
    .locals 1

    .line 16
    invoke-static {}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;->provideInstance()Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel_ExpandableFooterContainerViewModelBuilder_Factory;->get()Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;

    move-result-object v0

    return-object v0
.end method
