.class public final Lc/e/a/a/n/z;
.super Ljava/lang/Object;
.source "StatsDataSource.java"

# interfaces
.implements Lc/e/a/a/n/j;


# instance fields
.field public final a:Lc/e/a/a/n/j;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc/e/a/a/n/j;

    iput-object p1, p0, Lc/e/a/a/n/z;->a:Lc/e/a/a/n/j;

    .line 3
    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lc/e/a/a/n/z;->c:Landroid/net/Uri;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/n/z;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lc/e/a/a/n/l;)J
    .locals 2

    .line 2
    iget-object v0, p1, Lc/e/a/a/n/l;->a:Landroid/net/Uri;

    iput-object v0, p0, Lc/e/a/a/n/z;->c:Landroid/net/Uri;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc/e/a/a/n/z;->d:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Lc/e/a/a/n/z;->a:Lc/e/a/a/n/j;

    invoke-interface {v0, p1}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/l;)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lc/e/a/a/n/z;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lc/e/a/a/n/z;->c:Landroid/net/Uri;

    .line 6
    invoke-virtual {p0}, Lc/e/a/a/n/z;->a()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lc/e/a/a/n/z;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lc/e/a/a/n/z;->a:Lc/e/a/a/n/j;

    invoke-interface {v0}, Lc/e/a/a/n/j;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/z;->a:Lc/e/a/a/n/j;

    invoke-interface {v0, p1}, Lc/e/a/a/n/j;->a(Lc/e/a/a/n/A;)V

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/e/a/a/n/z;->b:J

    return-wide v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/z;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/z;->a:Lc/e/a/a/n/j;

    invoke-interface {v0}, Lc/e/a/a/n/j;->close()V

    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/z;->d:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lc/e/a/a/n/z;->b:J

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/z;->a:Lc/e/a/a/n/j;

    invoke-interface {v0}, Lc/e/a/a/n/j;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/n/z;->a:Lc/e/a/a/n/j;

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/n/j;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 2
    iget-wide p2, p0, Lc/e/a/a/n/z;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lc/e/a/a/n/z;->b:J

    :cond_0
    return p1
.end method
