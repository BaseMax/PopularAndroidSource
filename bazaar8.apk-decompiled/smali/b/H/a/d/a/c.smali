.class public final Lb/H/a/d/a/c;
.super Lb/H/a/d/a/b;
.source "SettableFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lb/H/a/d/a/b<",
        "TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/H/a/d/a/b;-><init>()V

    return-void
.end method

.method public static e()Lb/H/a/d/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lb/H/a/d/a/c<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/H/a/d/a/c;

    invoke-direct {v0}, Lb/H/a/d/a/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/H/a/d/a/b;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public b(Lc/e/b/a/a/a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/b/a/a/a<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lb/H/a/d/a/b;->b(Lc/e/b/a/a/a;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lb/H/a/d/a/b;->c(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
