.class public final Lc/c/a/e/d/c/a;
.super Ljava/lang/Object;
.source "AppDetailRepository.kt"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc/c/a/e/d/c/a/a;

.field public final c:Lc/c/a/e/d/r/c;

.field public final d:Lc/c/a/e/d/r/b/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/c/a/a;Lc/c/a/e/d/r/c;Lc/c/a/e/d/r/b/a/j;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appDetailRemoteDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reviewRemoteDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postCommentLocalDataSource"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/c/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/e/d/c/a;->b:Lc/c/a/e/d/c/a/a;

    iput-object p3, p0, Lc/c/a/e/d/c/a;->c:Lc/c/a/e/d/r/c;

    iput-object p4, p0, Lc/c/a/e/d/c/a;->d:Lc/c/a/e/d/r/b/a/j;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/e/d/c/a;)Lc/c/a/e/d/c/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/c/a;->b:Lc/c/a/e/d/c/a/a;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/e/d/c/a;)Lc/c/a/e/d/r/b/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/c/a;->d:Lc/c/a/e/d/r/b/a/j;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/e/d/c/a;)Lc/c/a/e/d/r/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/c/a;->c:Lc/c/a/e/d/r/c;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/c/a;->d:Lc/c/a/e/d/r/b/a/j;

    invoke-virtual {v0, p1}, Lc/c/a/e/d/r/b/a/j;->a(Ljava/lang/String;)Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILh/c/b;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
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
    new-instance v7, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/farsitel/bazaar/data/feature/appdetail/AppDetailRepository$getAppDetail$2;-><init>(Lc/c/a/e/d/c/a;Ljava/lang/String;Ljava/lang/String;IILh/c/b;)V

    invoke-static {v7, p5}, Li/a/I;->a(Lh/f/a/c;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
