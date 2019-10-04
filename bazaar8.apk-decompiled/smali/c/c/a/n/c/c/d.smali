.class public final Lc/c/a/n/c/c/d;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lc/c/a/n/c/c/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->vb()Lc/c/a/n/c/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/c/a/n/c/c/a/a<",
        "Lcom/farsitel/bazaar/common/model/page/HamiItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/c/c/d;->a:Lc/c/a/n/c/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/page/HamiItem;)V
    .locals 2

    const-string v0, "appItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lc/c/a/n/c/c/d;->a:Lc/c/a/n/c/c/n;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0, p1}, Lc/c/a/n/c/c/n;->a(Lcom/farsitel/bazaar/common/model/ui/EntityState;Lcom/farsitel/bazaar/common/model/page/PageAppItem;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/HamiItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/d;->a(Lcom/farsitel/bazaar/common/model/page/HamiItem;)V

    return-void
.end method

.method public b(Lcom/farsitel/bazaar/common/model/page/HamiItem;)V
    .locals 3

    const-string v0, "appItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lc/c/a/n/c/c/d;->a:Lc/c/a/n/c/c/n;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getApp()Lcom/farsitel/bazaar/common/model/page/PageAppItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/page/PageAppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/c/a/n/c/c/n;->a(Lc/c/a/n/c/c/n;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getLink()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lc/c/a/n/c/c/d;->a:Lc/c/a/n/c/c/n;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getLink()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.parse(this)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/page/HamiItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lc/c/a/b/f;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/common/model/page/HamiItem;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/d;->b(Lcom/farsitel/bazaar/common/model/page/HamiItem;)V

    return-void
.end method
