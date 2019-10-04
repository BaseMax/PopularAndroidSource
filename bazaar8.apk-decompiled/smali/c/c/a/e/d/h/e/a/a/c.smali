.class public Lc/c/a/e/d/h/e/a/a/c;
.super Lb/z/d;
.source "DownloadedVideoDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/h/e/a/a/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/z/d<",
        "Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lc/c/a/e/d/h/e/a/a/h;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/a/a/h;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/h/e/a/a/c;->d:Lc/c/a/e/d/h/e/a/a/h;

    invoke-direct {p0, p2}, Lb/z/d;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;)V
    .locals 4

    .line 2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 11
    :goto_2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoDesc()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 12
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoDesc()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 14
    :goto_3
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_4

    .line 15
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_4

    .line 16
    :cond_4
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 17
    :goto_4
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_5

    .line 18
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_5

    .line 19
    :cond_5
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_5
    const/4 v0, 0x7

    .line 20
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getExpirationDate()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lb/C/a/d;->a(IJ)V

    .line 21
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getShareLink()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 22
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_6

    .line 23
    :cond_6
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getShareLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 24
    :goto_6
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getQualityString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 25
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_7

    .line 26
    :cond_7
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getQualityString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lb/C/a/d;->a(ILjava/lang/String;)V

    .line 27
    :goto_7
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getDownloadPriceType()Lcom/farsitel/bazaar/common/model/VideoPurchaseState;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/e/f/c;->a(Lcom/farsitel/bazaar/common/model/VideoPurchaseState;)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    .line 28
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_8

    .line 29
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 30
    :goto_8
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getDownloadServerState()Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/e/f/d;->a(Lcom/farsitel/bazaar/common/model/VideoDownloadServerState;)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_9

    .line 31
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_9

    .line 32
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lb/C/a/d;->a(IJ)V

    .line 33
    :goto_9
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 34
    invoke-interface {p1, v1}, Lb/C/a/d;->a(I)V

    goto :goto_a

    .line 35
    :cond_a
    invoke-virtual {p2}, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;->getVideoId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lb/C/a/d;->a(ILjava/lang/String;)V

    :goto_a
    return-void
.end method

.method public bridge synthetic a(Lb/C/a/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;

    invoke-virtual {p0, p1, p2}, Lc/c/a/e/d/h/e/a/a/c;->a(Lb/C/a/f;Lcom/farsitel/bazaar/data/entity/DownloadedVideoEntity;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR ABORT `downloadedVideo` SET `videoId` = ?,`downloadId` = ?,`videoName` = ?,`videoDesc` = ?,`videoPath` = ?,`coverUrl` = ?,`expirationDate` = ?,`shareLink` = ?,`qualityString` = ?,`downloadPriceType` = ?,`downloadServerState` = ? WHERE `videoId` = ?"

    return-object v0
.end method
