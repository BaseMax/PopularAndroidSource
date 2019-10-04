.class public final Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;
.super Ljava/lang/Object;
.source "IsTabletProviderImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/IsTabletProviderImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newIsTabletProviderImpl(Landroid/content/Context;)Lcom/ebay/mobile/analytics/IsTabletProviderImpl;
    .locals 1

    .line 29
    new-instance v0, Lcom/ebay/mobile/analytics/IsTabletProviderImpl;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/IsTabletProviderImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/IsTabletProviderImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/ebay/mobile/analytics/IsTabletProviderImpl;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/ebay/mobile/analytics/IsTabletProviderImpl;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/IsTabletProviderImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/IsTabletProviderImpl;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/IsTabletProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/IsTabletProviderImpl_Factory;->get()Lcom/ebay/mobile/analytics/IsTabletProviderImpl;

    move-result-object v0

    return-object v0
.end method
