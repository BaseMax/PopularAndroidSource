.class public Lc/b/a/c/b/b/h;
.super Lc/b/a/i/f;
.source "LruResourceCache.java"

# interfaces
.implements Lc/b/a/c/b/b/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/i/f<",
        "Lc/b/a/c/c;",
        "Lc/b/a/c/b/D<",
        "*>;>;",
        "Lc/b/a/c/b/b/i;"
    }
.end annotation


# instance fields
.field public e:Lc/b/a/c/b/b/i$a;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lc/b/a/i/f;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/b/D;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "*>;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-super {p0, p1}, Lc/b/a/i/f;->b(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-interface {p1}, Lc/b/a/c/b/D;->b()I

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Lc/b/a/c/c;)Lc/b/a/c/b/D;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lc/b/a/i/f;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/b/D;

    return-object p1
.end method

.method public bridge synthetic a(Lc/b/a/c/c;Lc/b/a/c/b/D;)Lc/b/a/c/b/D;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lc/b/a/i/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/b/a/c/b/D;

    return-object p1
.end method

.method public a(I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lc/b/a/i/f;->a()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p0}, Lc/b/a/i/f;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lc/b/a/i/f;->a(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lc/b/a/c/b/b/i$a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lc/b/a/c/b/b/h;->e:Lc/b/a/c/b/b/i$a;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/c/c;

    check-cast p2, Lc/b/a/c/b/D;

    invoke-virtual {p0, p1, p2}, Lc/b/a/c/b/b/h;->b(Lc/b/a/c/c;Lc/b/a/c/b/D;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lc/b/a/c/b/D;

    invoke-virtual {p0, p1}, Lc/b/a/c/b/b/h;->a(Lc/b/a/c/b/D;)I

    move-result p1

    return p1
.end method

.method public b(Lc/b/a/c/c;Lc/b/a/c/b/D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Lc/b/a/c/b/D<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lc/b/a/c/b/b/h;->e:Lc/b/a/c/b/b/i$a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lc/b/a/c/b/b/i$a;->a(Lc/b/a/c/b/D;)V

    :cond_0
    return-void
.end method
