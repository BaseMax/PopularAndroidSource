.class public final Li/a/b/l;
.super Ljava/lang/Object;
.source "Channel.kt"


# direct methods
.method public static final a(I)Li/a/b/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Li/a/b/j<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    .line 2
    new-instance v0, Li/a/b/g;

    invoke-direct {v0, p0}, Li/a/b/g;-><init>(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Li/a/b/r;

    invoke-direct {v0}, Li/a/b/r;-><init>()V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Li/a/b/v;

    invoke-direct {v0}, Li/a/b/v;-><init>()V

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Li/a/b/q;

    invoke-direct {v0}, Li/a/b/q;-><init>()V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Li/a/b/g;

    sget-object p0, Li/a/b/j;->c:Li/a/b/j$a;

    invoke-virtual {p0}, Li/a/b/j$a;->a()I

    move-result p0

    invoke-direct {v0, p0}, Li/a/b/g;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static synthetic a(IILjava/lang/Object;)Li/a/b/j;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Li/a/b/l;->a(I)Li/a/b/j;

    move-result-object p0

    return-object p0
.end method
