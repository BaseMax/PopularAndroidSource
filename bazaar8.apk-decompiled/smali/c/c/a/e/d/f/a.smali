.class public final Lc/c/a/e/d/f/a;
.super Ljava/lang/Object;
.source "BoughtVideoRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/f/a/b;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/f/a/b;)V
    .locals 1

    const-string v0, "boughtVideoRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/f/a;->a:Lc/c/a/e/d/f/a/b;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/page/PageTypeItem;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/f/a;->a:Lc/c/a/e/d/f/a/b;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/e/d/f/a/b;->a(ILjava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method