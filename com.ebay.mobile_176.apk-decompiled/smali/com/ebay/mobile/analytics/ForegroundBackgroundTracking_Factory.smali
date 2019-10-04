.class public final Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;
.super Ljava/lang/Object;
.source "ForegroundBackgroundTracking_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;",
        ">;"
    }
.end annotation


# instance fields
.field private final ebayContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;"
        }
    .end annotation
.end field

.field private final processLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/Lifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;->processLifecycleProvider:Ljavax/inject/Provider;

    .line 18
    iput-object p2, p0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;->ebayContextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)",
            "Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newForegroundBackgroundTracking(Landroidx/lifecycle/Lifecycle;Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;
    .locals 1

    .line 39
    new-instance v0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;-><init>(Landroidx/lifecycle/Lifecycle;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroidx/lifecycle/Lifecycle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            ">;)",
            "Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;

    .line 29
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Lifecycle;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-direct {v0, p0, p1}, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;-><init>(Landroidx/lifecycle/Lifecycle;Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;->processLifecycleProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;->ebayContextProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking_Factory;->get()Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;

    move-result-object v0

    return-object v0
.end method
