.class public final Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
.super Ljava/lang/Object;
.source "DownloadProgressInfo.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public _remainTimeInMilli:J

.field public downloadSize:J

.field public downloadSpeed:F

.field public downloadedSize:J

.field public progress:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->_remainTimeInMilli:J

    const/high16 v2, -0x40800000    # -1.0f

    .line 3
    iput v2, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadSpeed:F

    .line 4
    iput-wide v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadSize:J

    .line 5
    iput-wide v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadedSize:J

    return-void
.end method


# virtual methods
.method public final getDownloadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadSize:J

    return-wide v0
.end method

.method public final getDownloadSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadSpeed:F

    return v0
.end method

.method public final getDownloadedSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadedSize:J

    return-wide v0
.end method

.method public final getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->progress:I

    return v0
.end method

.method public final getRemainTimeInMillis()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->_remainTimeInMilli:J

    const/4 v2, -0x1

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final setDownloadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadSize:J

    return-void
.end method

.method public final setDownloadSpeed(F)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadSpeed:F

    .line 2
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadSize:J

    iget-wide v2, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadedSize:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float/2addr v0, p1

    const/16 p1, 0x3e8

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-long v0, v0

    .line 3
    iput-wide v0, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->_remainTimeInMilli:J

    return-void
.end method

.method public final setDownloadedSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->downloadedSize:J

    return-void
.end method

.method public final setProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;->progress:I

    return-void
.end method
