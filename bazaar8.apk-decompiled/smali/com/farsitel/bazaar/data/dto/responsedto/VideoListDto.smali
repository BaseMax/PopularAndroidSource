.class public final Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final videos:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "videoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "videos"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;->videos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getVideos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PageCommonVideoDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/VideoListDto;->videos:Ljava/util/List;

    return-object v0
.end method
