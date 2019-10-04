.class public Lc/b/a/c/b/a/o$b;
.super Lc/b/a/c/b/a/d;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/c/b/a/d<",
        "Lc/b/a/c/b/a/o$a;",
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
.method public bridge synthetic a()Lc/b/a/c/b/a/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/b/a/o$b;->a()Lc/b/a/c/b/a/o$a;

    move-result-object v0

    return-object v0
.end method

.method public a()Lc/b/a/c/b/a/o$a;
    .locals 1

    .line 4
    new-instance v0, Lc/b/a/c/b/a/o$a;

    invoke-direct {v0, p0}, Lc/b/a/c/b/a/o$a;-><init>(Lc/b/a/c/b/a/o$b;)V

    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lc/b/a/c/b/a/o$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/b/a/c/b/a/d;->b()Lc/b/a/c/b/a/m;

    move-result-object v0

    check-cast v0, Lc/b/a/c/b/a/o$a;

    .line 3
    invoke-virtual {v0, p1, p2}, Lc/b/a/c/b/a/o$a;->a(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
