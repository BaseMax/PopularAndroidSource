.class public final Lc/c/a/e/d/h/e/a;
.super Ljava/lang/Object;
.source "VideoDetailRepository.kt"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lc/c/a/e/d/h/e/b/k;

.field public final d:Lc/c/a/e/d/h/c/b/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/h/e/b/k;Lc/c/a/e/d/h/c/b/b;)V
    .locals 1

    const-string v0, "videoDetailRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoReviewsRemoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/h/e/a;->c:Lc/c/a/e/d/h/e/b/k;

    iput-object p2, p0, Lc/c/a/e/d/h/e/a;->d:Lc/c/a/e/d/h/c/b/b;

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Lc/c/a/e/d/h/e/a;->a:I

    return-void
.end method

.method public static final synthetic a(Lc/c/a/e/d/h/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/e/d/h/e/a;->a:I

    return p0
.end method

.method public static final synthetic b(Lc/c/a/e/d/h/e/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lc/c/a/e/d/h/e/a;->b:I

    return p0
.end method

.method public static final synthetic c(Lc/c/a/e/d/h/e/a;)Lc/c/a/e/d/h/e/b/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/h/e/a;->c:Lc/c/a/e/d/h/e/b/k;

    return-object p0
.end method

.method public static final synthetic d(Lc/c/a/e/d/h/e/a;)Lc/c/a/e/d/h/c/b/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/h/e/a;->d:Lc/c/a/e/d/h/c/b/b;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/data/feature/cinema/video/VideoDetailRepository$getVideoDetail$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/farsitel/bazaar/data/feature/cinema/video/VideoDetailRepository$getVideoDetail$2;-><init>(Lc/c/a/e/d/h/e/a;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    invoke-static {v0, p3}, Li/a/I;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/cinema/VideoPlayInfoModel;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/e/a;->c:Lc/c/a/e/d/h/e/b/k;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/d/h/e/b/k;->b(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
