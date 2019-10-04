.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
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
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->videoId:Ljava/lang/String;

    iput p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->seasonIdx:I

    iput p3, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->episodeIdx:I

    return-void
.end method


# virtual methods
.method public final getEpisodeIdx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->episodeIdx:I

    return v0
.end method

.method public final getSeasonIdx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->seasonIdx:I

    return v0
.end method

.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageSerialDto;->videoId:Ljava/lang/String;

    return-object v0
.end method
