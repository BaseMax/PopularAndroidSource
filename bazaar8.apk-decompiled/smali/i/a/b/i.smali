.class public final Li/a/b/i;
.super Ljava/lang/Object;
.source "BroadcastChannel.kt"


# direct methods
.method public static final a(I)Li/a/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Li/a/b/h<",
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

    .line 1
    new-instance v0, Li/a/b/f;

    invoke-direct {v0, p0}, Li/a/b/f;-><init>(I)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported UNLIMITED capacity for BroadcastChannel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported 0 capacity for BroadcastChannel"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    new-instance v0, Li/a/b/p;

    invoke-direct {v0}, Li/a/b/p;-><init>()V

    goto :goto_0

    .line 5
    :cond_3
    new-instance v0, Li/a/b/f;

    sget-object p0, Li/a/b/j;->c:Li/a/b/j$a;

    invoke-virtual {p0}, Li/a/b/j$a;->a()I

    move-result p0

    invoke-direct {v0, p0}, Li/a/b/f;-><init>(I)V

    :goto_0
    return-object v0
.end method
