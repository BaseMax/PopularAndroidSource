.class public final Lc/c/a/e/d/h/e/a/b/d;
.super Ljava/lang/Object;
.source "ResponseDto.kt"


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "id"
    .end annotation
.end field

.field public final quality:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "name"
    .end annotation
.end field

.field public final size:J
    .annotation runtime Lc/e/d/a/c;
        value = "size"
    .end annotation
.end field

.field public final url:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "urls"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;
    .locals 7

    .line 1
    new-instance v6, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/h/e/a/b/d;->id:Ljava/lang/String;

    .line 3
    iget-wide v2, p0, Lc/c/a/e/d/h/e/a/b/d;->size:J

    .line 4
    iget-object v4, p0, Lc/c/a/e/d/h/e/a/b/d;->quality:Ljava/lang/String;

    .line 5
    iget-object v5, p0, Lc/c/a/e/d/h/e/a/b/d;->url:Ljava/util/List;

    move-object v0, v6

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    return-object v6
.end method
