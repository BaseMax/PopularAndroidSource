.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final videoId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "movieId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;->videoId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getVideoId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageMovieDto;->videoId:Ljava/lang/String;

    return-object v0
.end method
