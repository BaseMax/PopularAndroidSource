.class public final Lc/c/a/n/u/a/a;
.super Ljava/lang/Object;
.source "DeveloperReplyFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->sb()V
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/u/a/a;->a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/c/a/n/u/a/a;->a:Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->a(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "it"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lc/c/a/n/u/a/a;->a(Ljava/lang/Integer;)V

    return-void
.end method