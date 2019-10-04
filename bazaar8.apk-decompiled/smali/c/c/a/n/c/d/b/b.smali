.class public final Lc/c/a/n/c/d/b/b;
.super Ljava/lang/Object;
.source "MoreViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/d/b/c;->a(Lcom/farsitel/bazaar/ui/base/recycler/loadmore/MoreItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/d/b/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/d/b/c;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/d/b/b;->a:Lc/c/a/n/c/d/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lc/c/a/n/c/d/b/b;->a:Lc/c/a/n/c/d/b/c;

    invoke-static {p1}, Lc/c/a/n/c/d/b/c;->a(Lc/c/a/n/c/d/b/c;)Lc/c/a/n/c/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lc/c/a/n/c/b/a;->a()V

    :cond_0
    return-void
.end method
