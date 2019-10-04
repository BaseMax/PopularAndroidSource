.class public final Lc/c/a/n/j/b/b/b;
.super Ljava/lang/Object;
.source "CrewItemViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/j/b/b/c;->a(Landroid/content/Context;Lcom/farsitel/bazaar/common/model/cinema/CrewItem;Lc/c/a/n/j/b/b/d$a;)Lc/e/a/c/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/common/model/cinema/PersonModel;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lc/c/a/n/j/b/b/d$a;

.field public final synthetic d:Lc/e/a/c/h/d;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/cinema/PersonModel;Landroid/content/Context;Lc/c/a/n/j/b/b/d$a;Lc/e/a/c/h/d;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/b/b/b;->a:Lcom/farsitel/bazaar/common/model/cinema/PersonModel;

    iput-object p2, p0, Lc/c/a/n/j/b/b/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lc/c/a/n/j/b/b/b;->c:Lc/c/a/n/j/b/b/d$a;

    iput-object p4, p0, Lc/c/a/n/j/b/b/b;->d:Lc/e/a/c/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/b/b/b;->c:Lc/c/a/n/j/b/b/d$a;

    iget-object v0, p0, Lc/c/a/n/j/b/b/b;->a:Lcom/farsitel/bazaar/common/model/cinema/PersonModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/cinema/PersonModel;->getSlug()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lc/c/a/n/j/b/b/b;->a:Lcom/farsitel/bazaar/common/model/cinema/PersonModel;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/common/model/cinema/PersonModel;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lc/c/a/n/j/b/b/b;->a:Lcom/farsitel/bazaar/common/model/cinema/PersonModel;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/common/model/cinema/PersonModel;->getReferrer()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v2, v1}, Lc/c/a/n/j/b/b/d$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method
