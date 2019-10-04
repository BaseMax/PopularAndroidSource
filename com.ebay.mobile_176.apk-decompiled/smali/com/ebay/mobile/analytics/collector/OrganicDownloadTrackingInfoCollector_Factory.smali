.class public final Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;
.super Ljava/lang/Object;
.source "OrganicDownloadTrackingInfoCollector_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;

    invoke-direct {v0}, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;-><init>()V

    sput-object v0, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;->INSTANCE:Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;
    .locals 1

    .line 21
    sget-object v0, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;->INSTANCE:Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;

    return-object v0
.end method

.method public static newOrganicDownloadTrackingInfoCollector()Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;
    .locals 1

    .line 25
    new-instance v0, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;

    invoke-direct {v0}, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;
    .locals 1

    .line 17
    new-instance v0, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;

    invoke-direct {v0}, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;
    .locals 1

    .line 13
    invoke-static {}, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;->provideInstance()Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector_Factory;->get()Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;

    move-result-object v0

    return-object v0
.end method
