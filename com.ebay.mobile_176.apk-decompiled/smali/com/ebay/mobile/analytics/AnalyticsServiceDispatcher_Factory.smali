.class public final Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;
.super Ljava/lang/Object;
.source "AnalyticsServiceDispatcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final trackingQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/TrackingQueue;",
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
            "Lcom/ebay/mobile/analytics/TrackingQueue;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;->trackingQueueProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/TrackingQueue;",
            ">;)",
            "Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newAnalyticsServiceDispatcher(Ljava/lang/Object;)Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;
    .locals 1

    .line 31
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;

    check-cast p0, Lcom/ebay/mobile/analytics/TrackingQueue;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;-><init>(Lcom/ebay/mobile/analytics/TrackingQueue;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/mobile/analytics/TrackingQueue;",
            ">;)",
            "Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/analytics/TrackingQueue;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;-><init>(Lcom/ebay/mobile/analytics/TrackingQueue;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;->trackingQueueProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher_Factory;->get()Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;

    move-result-object v0

    return-object v0
.end method
