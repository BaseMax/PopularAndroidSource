.class Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;
.super Ljava/lang/Object;
.source "RemoteImageViewMultiPassConfiguration.java"


# instance fields
.field private final finalEnabled:Z

.field private final intermediateDownscale:I

.field private final intermediateEnabled:Z

.field private final maxInFlight:I


# direct methods
.method constructor <init>(ZZII)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->intermediateEnabled:Z

    .line 32
    iput-boolean p2, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->finalEnabled:Z

    .line 33
    iput p3, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->intermediateDownscale:I

    .line 34
    iput p4, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->maxInFlight:I

    return-void
.end method


# virtual methods
.method public getIntermediateDownscale()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->intermediateDownscale:I

    return v0
.end method

.method public getMaxInFlight()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->maxInFlight:I

    return v0
.end method

.method public isFinalLoadEnabled()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->finalEnabled:Z

    return v0
.end method

.method public isIntermediateLoadEnabled()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->intermediateEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 88
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "RIVMultiPassConfig{iEnabled=%b, fEnabled=%b, downscale=%d, maxInFlight=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->isIntermediateLoadEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 91
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->isFinalLoadEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 92
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->getIntermediateDownscale()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 93
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageViewMultiPassConfiguration;->getMaxInFlight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 88
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
