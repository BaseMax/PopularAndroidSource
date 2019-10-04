.class public final Lc/c/a/e/d/b/E;
.super Ljava/lang/Object;
.source "ScheduleUpdateRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/d/b/W;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/W;)V
    .locals 1

    const-string v0, "localDataSource"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/b/E;->a:Lc/c/a/e/d/b/W;

    return-void
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/c/a/e/d/b/E;->a:Lc/c/a/e/d/b/W;

    invoke-virtual {p1}, Lc/c/a/e/d/b/W;->a()Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method
