.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final episodeId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "episodeId"
    .end annotation
.end field

.field public final episodeIdx:I
    .annotation runtime Lc/e/d/a/c;
        value = "episodeIdx"
    .end annotation
.end field

.field public final seasonIdx:I
    .annotation runtime Lc/e/d/a/c;
        value = "seasonIdx"
    .end annotation
.end field

.field public final videoId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "serialId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "episodeId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoId"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->episodeId:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->videoId:Ljava/lang/String;

    iput p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->seasonIdx:I

    iput p4, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->episodeIdx:I

    return-void
.end method


# virtual methods
.method public final getEpisodeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getEpisodeIdx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->episodeIdx:I

    return v0
.end method

.method public final getSeasonIdx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->seasonIdx:I

    return v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageEpisodeDto;->videoId:Ljava/lang/String;

    return-object v0
.end method
