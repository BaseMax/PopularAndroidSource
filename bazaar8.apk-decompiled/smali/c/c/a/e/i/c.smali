.class public final Lc/c/a/e/i/c;
.super Ljava/lang/Object;
.source "PlaceRepository.kt"


# instance fields
.field public final a:Lc/c/a/e/e/c;

.field public final b:Lc/c/a/e/e/a;

.field public final c:Lc/c/a/e/i/a;

.field public final d:J


# direct methods
.method public constructor <init>(Lc/c/a/e/e/c;Lc/c/a/e/e/a;Lc/c/a/e/i/a;J)V
    .locals 1

    const-string v0, "reverseGeocoding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationManager"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeDataSource"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/i/c;->a:Lc/c/a/e/e/c;

    iput-object p2, p0, Lc/c/a/e/i/c;->b:Lc/c/a/e/e/a;

    iput-object p3, p0, Lc/c/a/e/i/c;->c:Lc/c/a/e/i/a;

    iput-wide p4, p0, Lc/c/a/e/i/c;->d:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/data/entity/Place;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/i/c;->c:Lc/c/a/e/i/a;

    invoke-virtual {v0}, Lc/c/a/e/i/a;->c()Lcom/farsitel/bazaar/data/entity/Place;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lc/c/a/e/i/c;->a(Lcom/farsitel/bazaar/data/entity/Place;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/c/a/e/i/c;->b()Lcom/farsitel/bazaar/data/entity/Place;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Unable to find any related Place"

    invoke-direct {v2, v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/Place;)Z
    .locals 4

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Place;->getUpdatedAt()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lc/c/a/e/i/c;->d:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b()Lcom/farsitel/bazaar/data/entity/Place;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/i/c;->b:Lc/c/a/e/e/a;

    invoke-virtual {v0}, Lc/c/a/e/e/a;->a()Lcom/farsitel/bazaar/data/entity/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/c/a/e/i/c;->a:Lc/c/a/e/e/c;

    invoke-virtual {v1, v0}, Lc/c/a/e/e/c;->a(Lcom/farsitel/bazaar/data/entity/Location;)Lcom/farsitel/bazaar/data/entity/Place;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/c/a/e/i/c;->c:Lc/c/a/e/i/a;

    invoke-virtual {v1, v0}, Lc/c/a/e/i/a;->a(Lcom/farsitel/bazaar/data/entity/Place;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
