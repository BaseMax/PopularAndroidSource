.class public final Lc/c/a/n/b/g;
.super Ljava/lang/Object;
.source "AppDetailFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->jb()Lc/c/a/n/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/b/w;

.field public final synthetic b:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;


# direct methods
.method public constructor <init>(Lc/c/a/n/b/w;Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/b/g;->a:Lc/c/a/n/b/w;

    iput-object p2, p0, Lc/c/a/n/b/g;->b:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/n/b/g;->a:Lc/c/a/n/b/w;

    invoke-virtual {v1}, Lc/c/a/n/b/w;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lc/c/a/n/b/g;->b:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;

    move-result-object v0

    const-string v1, "packageChangeModel"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/n/b/w;->a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;

    invoke-virtual {p0, p1}, Lc/c/a/n/b/g;->a(Lcom/farsitel/bazaar/common/model/ui/PackageChangeModel;)V

    return-void
.end method
