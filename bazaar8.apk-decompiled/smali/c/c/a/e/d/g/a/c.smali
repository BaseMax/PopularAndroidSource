.class public final Lc/c/a/e/d/g/a/c;
.super Ljava/lang/Object;
.source "CategoryRemoteDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/g/a/f;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/g/a/f;)V
    .locals 1

    const-string v0, "categoryService"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/g/a/c;->a:Lc/c/a/e/d/g/a/f;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
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
    new-instance v0, Lc/c/a/e/d/g/a/e;

    invoke-direct {v0}, Lc/c/a/e/d/g/a/e;-><init>()V

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/g/a/c;->a:Lc/c/a/e/d/g/a/f;

    invoke-interface {v1, v0}, Lc/c/a/e/d/g/a/f;->a(Lc/c/a/e/d/g/a/e;)Ll/b;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/data/feature/category/remote/CategoryRemoteDataSource$getCategories$2;->a:Lcom/farsitel/bazaar/data/feature/category/remote/CategoryRemoteDataSource$getCategories$2;

    invoke-static {v0, v1, p1}, Lc/c/a/e/c/b;->a(Ll/b;Lh/f/a/b;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
