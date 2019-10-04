.class public final Lc/b/a/c/b/a/j$b;
.super Lc/b/a/c/b/a/d;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/c/b/a/d<",
        "Lc/b/a/c/b/a/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/c/b/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lc/b/a/c/b/a/j$a;
    .locals 1

    .line 4
    new-instance v0, Lc/b/a/c/b/a/j$a;

    invoke-direct {v0, p0}, Lc/b/a/c/b/a/j$a;-><init>(Lc/b/a/c/b/a/j$b;)V

    return-object v0
.end method

.method public a(ILjava/lang/Class;)Lc/b/a/c/b/a/j$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lc/b/a/c/b/a/j$a;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lc/b/a/c/b/a/d;->b()Lc/b/a/c/b/a/m;

    move-result-object v0

    check-cast v0, Lc/b/a/c/b/a/j$a;

    .line 3
    invoke-virtual {v0, p1, p2}, Lc/b/a/c/b/a/j$a;->a(ILjava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic a()Lc/b/a/c/b/a/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/b/a/j$b;->a()Lc/b/a/c/b/a/j$a;

    move-result-object v0

    return-object v0
.end method
