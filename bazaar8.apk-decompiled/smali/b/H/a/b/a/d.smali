.class public Lb/H/a/b/a/d;
.super Lb/H/a/b/a/c;
.source "NetworkConnectedController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/H/a/b/a/c<",
        "Lb/H/a/b/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/H/a/b/b/h;->a(Landroid/content/Context;)Lb/H/a/b/b/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/H/a/b/b/h;->c()Lb/H/a/b/b/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/H/a/b/a/c;-><init>(Lb/H/a/b/b/e;)V

    return-void
.end method


# virtual methods
.method public a(Lb/H/a/b/b;)Z
    .locals 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 3
    invoke-virtual {p1}, Lb/H/a/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb/H/a/b/b;->d()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Lb/H/a/b/b;->a()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public a(Lb/H/a/c/o;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lb/H/a/c/o;->l:Lb/H/b;

    invoke-virtual {p1}, Lb/H/b;->b()Landroidx/work/NetworkType;

    move-result-object p1

    sget-object v0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lb/H/a/b/b;

    invoke-virtual {p0, p1}, Lb/H/a/b/a/d;->a(Lb/H/a/b/b;)Z

    move-result p1

    return p1
.end method
