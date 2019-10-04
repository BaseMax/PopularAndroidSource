.class public final Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final genres:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "genreList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;",
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
            "Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "genres"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;->genres:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getGenres()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/PageGenreRowDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/GenreListDto;->genres:Ljava/util/List;

    return-object v0
.end method
