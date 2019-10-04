.class public Lb/H/a/b/a/h;
.super Lb/H/a/b/a/c;
.source "StorageNotLowController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/H/a/b/a/c<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/H/a/b/b/h;->a(Landroid/content/Context;)Lb/H/a/b/b/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/H/a/b/b/h;->d()Lb/H/a/b/b/g;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/H/a/b/a/c;-><init>(Lb/H/a/b/b/e;)V

    return-void
.end method


# virtual methods
.method public a(Lb/H/a/c/o;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lb/H/a/c/o;->l:Lb/H/b;

    invoke-virtual {p1}, Lb/H/b;->i()Z

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/Boolean;)Z
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lb/H/a/b/a/h;->a(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
