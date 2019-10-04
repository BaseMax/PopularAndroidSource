.class public final Lc/c/a/e/d/g/a;
.super Ljava/lang/Object;
.source "CategoryRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/g/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/g/a/c;)V
    .locals 1

    const-string v0, "categoryRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/g/a;->a:Lc/c/a/e/d/g/a/c;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "+",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/categroy/CategoryItem;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/g/a;->a:Lc/c/a/e/d/g/a/c;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/g/a/c;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
