.class public final Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;
.super Ljava/lang/Object;
.source "VideoDownloadQualityInfo.kt"


# instance fields
.field public final info:Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;)V
    .locals 1

    const-string v0, "info"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;->info:Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    return-void
.end method


# virtual methods
.method public final getInfo()Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadQuality;->info:Lcom/farsitel/bazaar/common/model/VideoDownloadQualityInfo;

    return-object v0
.end method
