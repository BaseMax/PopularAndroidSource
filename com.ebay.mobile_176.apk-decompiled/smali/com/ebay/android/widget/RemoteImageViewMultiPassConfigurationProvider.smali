.class Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;
.super Ljava/lang/Object;
.source "RemoteImageViewMultiPassConfigurationProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field private static final DOWNSCALE:Lcom/codahale/metrics/Histogram;

.field private static final FINAL_ENABLED:Lcom/codahale/metrics/Histogram;

.field private static final INTERMEDIATE_ENABLED:Lcom/codahale/metrics/Histogram;

.field private static final LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static final MAX_IN_FLIGHT:Lcom/codahale/metrics/Histogram;


# instance fields
.field private final downscaleProvider:Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;

.field private final finalEnabledProvider:Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;

.field private final intermediateEnabledProvider:Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;

.field private final maxInFlightProvider:Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "RIVMultiPassConfig"

    const-string v2, "RemoteImageView multi-pass configuration"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 29
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "downscale"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->histogram(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Histogram;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->DOWNSCALE:Lcom/codahale/metrics/Histogram;

    .line 34
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "maxInFlight"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->histogram(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Histogram;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->MAX_IN_FLIGHT:Lcom/codahale/metrics/Histogram;

    .line 39
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "intermediateEnabled"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->histogram(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Histogram;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->INTERMEDIATE_ENABLED:Lcom/codahale/metrics/Histogram;

    .line 44
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "finalEnabled"

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/metrics/Metrics;->histogram(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)Lcom/codahale/metrics/Histogram;

    move-result-object v0

    sput-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->FINAL_ENABLED:Lcom/codahale/metrics/Histogram;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/connection/Connection;->getInstance(Landroid/content/Context;)Lcom/ebay/nautilus/kernel/connection/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/connection/Connection;->getConnectionThroughputProvider()Ljavax/inject/Provider;

    move-result-object v0

    .line 59
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/connection/Connection;->getInstance(Landroid/content/Context;)Lcom/ebay/nautilus/kernel/connection/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/connection/Connection;->getConnectionMeteredProvider()Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;

    move-result-object v1

    .line 60
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/connection/Connection;->getInstance(Landroid/content/Context;)Lcom/ebay/nautilus/kernel/connection/Connection;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/connection/Connection;->getConnectionTypeProvider()Ljavax/inject/Provider;

    move-result-object p1

    .line 58
    invoke-direct {p0, v0, v1, p1}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;-><init>(Ljavax/inject/Provider;Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;Ljavax/inject/Provider;)V

    return-void
.end method

.method private constructor <init>(Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;)V
    .locals 1
    .param p1    # Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "intermediateEnabledProvider may not be null"

    .line 95
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->intermediateEnabledProvider:Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;

    const-string p1, "finalEnabledProvider may not be null"

    .line 97
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->finalEnabledProvider:Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;

    const-string p1, "downscaleProvider may not be null"

    .line 99
    invoke-static {p3, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->downscaleProvider:Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;

    const-string p1, "maxInFlightProvider may not be null"

    .line 101
    invoke-static {p4, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->maxInFlightProvider:Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;

    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;Ljavax/inject/Provider;)V
    .locals 3
    .param p1    # Ljavax/inject/Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljavax/inject/Provider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionThroughput;",
            ">;",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;",
            "Ljavax/inject/Provider<",
            "Lcom/ebay/nautilus/kernel/connection/ConnectionType;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;

    invoke-direct {v0, p1, p2}, Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;-><init>(Ljavax/inject/Provider;Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;)V

    new-instance v1, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;

    invoke-direct {v1, p1, p2}, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;-><init>(Ljavax/inject/Provider;Lcom/ebay/nautilus/kernel/connection/ConnectionMeteredProvider;)V

    new-instance p2, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;

    invoke-direct {p2, p1, p3}, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    new-instance v2, Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;

    invoke-direct {v2, p1, p3}, Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;-><init>(Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->intermediateEnabledProvider:Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;

    invoke-virtual {v0}, Lcom/ebay/android/widget/RemoteImageViewIntermediateEnabledProvider;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->finalEnabledProvider:Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;

    invoke-virtual {v1}, Lcom/ebay/android/widget/RemoteImageViewFinalEnabledProvider;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 114
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->downscaleProvider:Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;

    invoke-virtual {v2}, Lcom/ebay/android/widget/RemoteImageViewDownscaleProvider;->get()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->maxInFlightProvider:Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;

    invoke-virtual {v3}, Lcom/ebay/android/widget/RemoteImageViewMaxInFlightProvider;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 117
    sget-object v4, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->INTERMEDIATE_ENABLED:Lcom/codahale/metrics/Histogram;

    invoke-virtual {v4, v0}, Lcom/codahale/metrics/Histogram;->update(I)V

    .line 118
    sget-object v4, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->FINAL_ENABLED:Lcom/codahale/metrics/Histogram;

    invoke-virtual {v4, v0}, Lcom/codahale/metrics/Histogram;->update(I)V

    .line 119
    sget-object v4, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->DOWNSCALE:Lcom/codahale/metrics/Histogram;

    invoke-virtual {v4, v2}, Lcom/codahale/metrics/Histogram;->update(I)V

    .line 120
    sget-object v4, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->MAX_IN_FLIGHT:Lcom/codahale/metrics/Histogram;

    invoke-virtual {v4, v3}, Lcom/codahale/metrics/Histogram;->update(I)V

    .line 122
    new-instance v4, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;-><init>(ZZII)V

    .line 130
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    invoke-virtual {v4}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-object v4
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfigurationProvider;->get()Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;

    move-result-object v0

    return-object v0
.end method
