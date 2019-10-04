.class public final Lcom/farsitel/bazaar/data/feature/cinema/series/remote/SeriesDetailRemoteDataSource$getSeriesInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SeriesDetailRemoteDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/h/d/b/h;->b(Ljava/lang/String;ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/h/d/b/j;",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic $seasonIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/remote/SeriesDetailRemoteDataSource$getSeriesInfo$2;->$seasonIndex:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/d/h/d/b/j;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/cinema/series/remote/SeriesDetailRemoteDataSource$getSeriesInfo$2;->a(Lc/c/a/e/d/h/d/b/j;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/c/a/e/d/h/d/b/j;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/e/d/h/d/b/j;",
            ")",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/farsitel/bazaar/data/feature/cinema/series/remote/SeriesDetailRemoteDataSource$getSeriesInfo$2;->$seasonIndex:I

    invoke-virtual {p1, v0}, Lc/c/a/e/d/h/d/b/j;->a(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
