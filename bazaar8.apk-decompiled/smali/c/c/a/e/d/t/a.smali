.class public final Lc/c/a/e/d/t/a;
.super Ljava/lang/Object;
.source "SeasonEpisodeRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/t/a/a;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/t/a/a;)V
    .locals 1

    const-string v0, "seasonEpisodeRemoteDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/t/a;->a:Lc/c/a/e/d/t/a/a;

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;ILh/c/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I",
            "Lh/c/b<",
            "-",
            "Lcom/farsitel/bazaar/data/entity/Either<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/t/a;->a:Lc/c/a/e/d/t/a/a;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lc/c/a/e/d/t/a/a;->a(IILjava/lang/String;ILh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
