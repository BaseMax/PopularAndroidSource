.class public final Lc/c/a/e/d/m/b/b/i;
.super Ljava/lang/Object;
.source "GetPurchasesResponseDto.kt"


# instance fields
.field public final fetchTimestamp:J
    .annotation runtime Lc/e/d/a/c;
        value = "fetchTimestamp"
    .end annotation
.end field

.field public final purchases:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "purchases"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/b/b/o;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/e/d/m/b/b/i;->fetchTimestamp:J

    return-wide v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/b/b/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/b/b/i;->purchases:Ljava/util/List;

    return-object v0
.end method
