.class public final Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;
.super Lc/b/a/e/a;
.source "BazaarGlideModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/e/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/b/a/e;Lcom/bumptech/glide/Registry;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glide"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registry"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lc/c/a/c/h/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/bumptech/glide/MemoryCategory;->NORMAL:Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {p2, v0}, Lc/b/a/e;->a(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/bumptech/glide/MemoryCategory;->LOW:Lcom/bumptech/glide/MemoryCategory;

    invoke-virtual {p2, v0}, Lc/b/a/e;->a(Lcom/bumptech/glide/MemoryCategory;)Lcom/bumptech/glide/MemoryCategory;

    .line 4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lc/b/a/e/d;->a(Landroid/content/Context;Lc/b/a/e;Lcom/bumptech/glide/Registry;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lc/b/a/f;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lc/c/a/c/h/d;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Lc/b/a/g/g;

    invoke-direct {p1}, Lc/b/a/g/g;-><init>()V

    .line 7
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {p1, v0}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lc/b/a/g/g;

    move-result-object p1

    .line 8
    sget-object v0, Lc/b/a/c/b/p;->d:Lc/b/a/c/b/p;

    invoke-virtual {p1, v0}, Lc/b/a/g/g;->a(Lc/b/a/c/b/p;)Lc/b/a/g/g;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Lc/b/a/f;->a(Lc/b/a/g/g;)Lc/b/a/f;

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lc/b/a/g/g;

    invoke-direct {p1}, Lc/b/a/g/g;-><init>()V

    .line 11
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {p1, v0}, Lc/b/a/g/g;->a(Lcom/bumptech/glide/load/DecodeFormat;)Lc/b/a/g/g;

    move-result-object p1

    .line 12
    sget-object v0, Lc/b/a/c/b/p;->d:Lc/b/a/c/b/p;

    invoke-virtual {p1, v0}, Lc/b/a/g/g;->a(Lc/b/a/c/b/p;)Lc/b/a/g/g;

    move-result-object p1

    .line 13
    invoke-virtual {p2, p1}, Lc/b/a/f;->a(Lc/b/a/g/g;)Lc/b/a/f;

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
