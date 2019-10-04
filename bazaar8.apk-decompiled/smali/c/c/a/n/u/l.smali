.class public final Lc/c/a/n/u/l;
.super Ljava/lang/Object;
.source "ReviewsFragment.kt"

# interfaces
.implements Lc/c/a/n/u/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->rb()Lc/c/a/n/u/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V
    .locals 2

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->d(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->c(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Lc/c/a/n/u/q;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc/c/a/n/u/q;->d(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    .line 3
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public b(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V
    .locals 2

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->d(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->c(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Lc/c/a/n/u/q;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc/c/a/n/u/q;->c(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    .line 3
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public c(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V
    .locals 2

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->d(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->c(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Lc/c/a/n/u/q;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc/c/a/n/u/q;->b(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    .line 3
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public d(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V
    .locals 2

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {v0}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->d(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lc/c/a/n/u/l;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-static {v1}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->c(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;)Lc/c/a/n/u/q;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc/c/a/n/u/q;->a(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;I)V

    .line 3
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method
