.class public final Lc/c/a/e/d/o/c;
.super Ljava/lang/Object;
.source "ReleaseNoteRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/o/c$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/o/c$a;


# instance fields
.field public final b:Lc/c/a/e/d/u/a;

.field public final c:Lc/c/a/e/b/c;

.field public final d:Lc/c/a/e/d/o/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/d/o/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/d/o/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/d/o/c;->a:Lc/c/a/e/d/o/c$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/d/u/a;Lc/c/a/e/b/c;Lc/c/a/e/d/o/a;)V
    .locals 1

    const-string v0, "settingsRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "releaseNoteDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/o/c;->b:Lc/c/a/e/d/u/a;

    iput-object p2, p0, Lc/c/a/e/d/o/c;->c:Lc/c/a/e/b/c;

    iput-object p3, p0, Lc/c/a/e/d/o/c;->d:Lc/c/a/e/d/o/a;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNote;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lc/c/a/e/d/o/c;->a(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNote;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/o/c;->d:Lc/c/a/e/d/o/a;

    invoke-virtual {v0}, Lc/c/a/e/d/o/a;->a()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/data/entity/ReleaseNote;

    .line 5
    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/entity/ReleaseNote;->getReleaseVersionCode()I

    move-result v3

    int-to-long v3, v3

    cmp-long v5, v3, p1

    if-lez v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/ReleaseNote;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/o/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/c/a/e/d/o/c;->c()J

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lc/c/a/e/d/o/c;->e()V

    .line 4
    invoke-virtual {p0, v0, v1}, Lc/c/a/e/d/o/c;->a(J)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/o/c;->b:Lc/c/a/e/d/u/a;

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->s()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/o/c;->c()J

    move-result-wide v0

    iget-object v2, p0, Lc/c/a/e/d/o/c;->c:Lc/c/a/e/b/c;

    invoke-virtual {v2}, Lc/c/a/e/b/c;->c()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/o/c;->b:Lc/c/a/e/d/u/a;

    iget-object v1, p0, Lc/c/a/e/d/o/c;->c:Lc/c/a/e/b/c;

    invoke-virtual {v1}, Lc/c/a/e/b/c;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/c/a/e/d/u/a;->b(J)V

    return-void
.end method
