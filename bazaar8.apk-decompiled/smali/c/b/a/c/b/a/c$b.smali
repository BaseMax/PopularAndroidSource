.class public Lc/b/a/c/b/a/c$b;
.super Lc/b/a/c/b/a/d;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/c/b/a/d<",
        "Lc/b/a/c/b/a/c$a;",
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
.method public a()Lc/b/a/c/b/a/c$a;
    .locals 1

    .line 4
    new-instance v0, Lc/b/a/c/b/a/c$a;

    invoke-direct {v0, p0}, Lc/b/a/c/b/a/c$a;-><init>(Lc/b/a/c/b/a/c$b;)V

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Lc/b/a/c/b/a/c$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/b/a/c/b/a/d;->b()Lc/b/a/c/b/a/m;

    move-result-object v0

    check-cast v0, Lc/b/a/c/b/a/c$a;

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/c/b/a/c$a;->a(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method

.method public bridge synthetic a()Lc/b/a/c/b/a/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/c/b/a/c$b;->a()Lc/b/a/c/b/a/c$a;

    move-result-object v0

    return-object v0
.end method
