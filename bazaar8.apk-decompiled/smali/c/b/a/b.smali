.class public final Lc/b/a/b;
.super Lc/b/a/a;
.source "GeneratedAppGlideModuleImpl.java"


# instance fields
.field public final a:Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/b/a/a;-><init>()V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;

    invoke-direct {v0}, Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;-><init>()V

    iput-object v0, p0, Lc/b/a/b;->a:Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;

    const-string v0, "Glide"

    const/4 v1, 0x3

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Discovered AppGlideModule from annotation: com.farsitel.bazaar.core.util.imageloader.BazaarGlideModule"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lc/b/a/e;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/b;->a:Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;->a(Landroid/content/Context;Lc/b/a/e;Lcom/bumptech/glide/Registry;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lc/b/a/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/b;->a:Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;

    invoke-virtual {v0, p1, p2}, Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;->a(Landroid/content/Context;Lc/b/a/f;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lc/b/a/b;->a:Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/core/util/imageloader/BazaarGlideModule;->a()Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Lc/b/a/c;
    .locals 1

    .line 2
    new-instance v0, Lc/b/a/c;

    invoke-direct {v0}, Lc/b/a/c;-><init>()V

    return-object v0
.end method

.method public bridge synthetic c()Lc/b/a/d/n$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/b;->c()Lc/b/a/c;

    move-result-object v0

    return-object v0
.end method
