.class public Lc/c/a/d/g/a/f;
.super Lc/b/a/n;
.source "GlideRequests.java"


# direct methods
.method public constructor <init>(Lc/b/a/e;Lc/b/a/d/i;Lc/b/a/d/o;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lc/b/a/n;-><init>(Lc/b/a/e;Lc/b/a/d/i;Lc/b/a/d/o;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Class;)Lc/b/a/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/d/g/a/f;->a(Ljava/lang/Class;)Lc/c/a/d/g/a/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;)Lc/b/a/k;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/g/a/f;->a(Ljava/lang/String;)Lc/c/a/d/g/a/e;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/net/Uri;)Lc/c/a/d/g/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lc/c/a/d/g/a/e<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lc/b/a/n;->a(Landroid/net/Uri;)Lc/b/a/k;

    move-result-object p1

    check-cast p1, Lc/c/a/d/g/a/e;

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lc/c/a/d/g/a/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lc/c/a/d/g/a/e<",
            "TResourceType;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lc/c/a/d/g/a/e;

    iget-object v1, p0, Lc/b/a/n;->d:Lc/b/a/e;

    iget-object v2, p0, Lc/b/a/n;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lc/c/a/d/g/a/e;-><init>(Lc/b/a/e;Lc/b/a/n;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lc/c/a/d/g/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/c/a/d/g/a/e<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lc/b/a/n;->a(Ljava/lang/String;)Lc/b/a/k;

    move-result-object p1

    check-cast p1, Lc/c/a/d/g/a/e;

    return-object p1
.end method

.method public a(Lc/b/a/g/g;)V
    .locals 1

    .line 6
    instance-of v0, p1, Lc/c/a/d/g/a/d;

    if-eqz v0, :cond_0

    .line 7
    invoke-super {p0, p1}, Lc/b/a/n;->a(Lc/b/a/g/g;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lc/c/a/d/g/a/d;

    invoke-direct {v0}, Lc/c/a/d/g/a/d;-><init>()V

    invoke-virtual {v0, p1}, Lc/c/a/d/g/a/d;->a(Lc/b/a/g/g;)Lc/c/a/d/g/a/d;

    move-result-object p1

    invoke-super {p0, p1}, Lc/b/a/n;->a(Lc/b/a/g/g;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic c()Lc/b/a/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/g/a/f;->c()Lc/c/a/d/g/a/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/c/a/d/g/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/d/g/a/e<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lc/b/a/n;->c()Lc/b/a/k;

    move-result-object v0

    check-cast v0, Lc/c/a/d/g/a/e;

    return-object v0
.end method

.method public bridge synthetic d()Lc/b/a/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/g/a/f;->d()Lc/c/a/d/g/a/e;

    move-result-object v0

    return-object v0
.end method

.method public d()Lc/c/a/d/g/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/d/g/a/e<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lc/b/a/n;->d()Lc/b/a/k;

    move-result-object v0

    check-cast v0, Lc/c/a/d/g/a/e;

    return-object v0
.end method
