.class public final Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;
.super Lc/c/a/n/u/b/g;
.source "PostAppCommentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/u/b/g<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# static fields
.field public static final Ha:Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;


# instance fields
.field public final Ia:Ljava/lang/String;

.field public Ja:Z

.field public Ka:Lc/c/a/n/b/b/a;

.field public La:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ha:Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/u/b/g;-><init>()V

    const-string v0, "postAppComment"

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ia:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ja:Z

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->La:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ia:Ljava/lang/String;

    return-object v0
.end method

.method public Ya()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ja:Z

    return v0
.end method

.method public _a()Lcom/farsitel/bazaar/analytics/model/where/PostAppReviewScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/PostAppReviewScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/PostAppReviewScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic _a()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->_a()Lcom/farsitel/bazaar/analytics/model/where/PostAppReviewScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lc/c/a/f/s;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/s;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ka:Lc/c/a/n/b/b/a;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lc/c/a/n/b/b/a;->d()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object p2

    const/16 p3, 0x35

    invoke-virtual {p1, p3, p2}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const-string p2, "FragmentPostCommentBindi\u2026gs.toolbarInfo)\n        }"

    .line 3
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "postCommentArgs"

    .line 4
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/u/b/g;->b(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->ob()Landroid/widget/RatingBar;

    move-result-object p1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ka:Lc/c/a/n/b/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/b/b/a;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setRating(F)V

    return-void

    :cond_0
    const-string p1, "postCommentArgs"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/b/b/a;->a:Lc/c/a/n/b/b/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/b/b/a$a;->a(Landroid/os/Bundle;)Lc/c/a/n/b/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ka:Lc/c/a/n/b/b/a;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public ib()V
    .locals 2

    .line 1
    invoke-super {p0}, Lc/c/a/n/u/b/g;->ib()V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/g;->Za()Lc/c/a/d/d/c;

    move-result-object v0

    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->nb()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lb/o/a/d;->Ma()V

    return-void
.end method

.method public lb()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->pb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->hb()Lc/c/a/n/u/b/e;

    move-result-object v1

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ka:Lc/c/a/n/b/b/a;

    const/4 v2, 0x0

    const-string v3, "postCommentArgs"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/b/b/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->ob()Landroid/widget/RatingBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RatingBar;->getRating()F

    move-result v4

    float-to-int v4, v4

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->eb()Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6
    iget-object v6, p0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ka:Lc/c/a/n/b/b/a;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lc/c/a/n/b/b/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 7
    sget-object v8, Lcom/farsitel/bazaar/data/entity/EntityType;->APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->fb()Z

    move-result v9

    move-object v2, v0

    move v3, v4

    move-object v4, v5

    move-wide v5, v6

    move-object v7, v8

    move v8, v9

    .line 9
    invoke-virtual/range {v1 .. v8}, Lc/c/a/n/u/b/e;->a(Ljava/lang/String;ILjava/lang/String;JLcom/farsitel/bazaar/data/entity/EntityType;Z)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 12
    :cond_2
    invoke-virtual {p0}, Lc/c/a/n/u/b/g;->qb()V

    :goto_0
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/u/b/g;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Qa()V

    return-void
.end method
