.class public final Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;
.super Lc/c/a/n/c/d/f;
.source "DeveloperReplyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/f<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Ljava/lang/Integer;",
        "Lc/c/a/n/u/a/j;",
        ">;"
    }
.end annotation


# instance fields
.field public Aa:I

.field public Ba:Z

.field public Ca:Ljava/util/HashMap;

.field public wa:Lc/c/a/f/o;

.field public xa:Lc/c/a/n/u/q;

.field public ya:Lc/c/a/n/u/a/i;

.field public final za:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->za:Ljava/lang/Object;

    const v0, 0x7f0d005b

    .line 3
    iput v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Aa:I

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;IZ)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->a(IZ)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->za:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Ca:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/DeveloperReplayScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/DeveloperReplayScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/DeveloperReplayScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/DeveloperReplayScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Ua()Lc/c/a/n/u/e;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/u/e;
    .locals 3

    .line 2
    new-instance v0, Lc/c/a/n/u/e;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->tb()Lc/c/a/n/u/a/d;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->ub()Lc/c/a/n/u/a/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/c/a/n/u/e;-><init>(Lc/c/a/n/u/b;Lc/c/a/n/u/c;)V

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Aa:I

    return v0
.end method

.method public Za()Ljava/lang/Integer;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->ya:Lc/c/a/n/u/a/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/u/a/i;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "developerArg"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Za()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 4
    invoke-static {p1, p2, p3}, Lc/c/a/f/o;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/o;

    move-result-object p1

    const-string p2, "FragmentMoreReviewBindin\u2026flater, container, false)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->wa:Lc/c/a/f/o;

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->wa:Lc/c/a/f/o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "dataBinding"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 14
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    .line 15
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->xa:Lc/c/a/n/u/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/n/u/q;->a(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const-string p1, "replyViewModel"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(IZ)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->xa:Lc/c/a/n/u/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lc/c/a/n/u/q;->b(IZ)V

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f1001f7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->m()V

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1

    :cond_1
    const-string p1, "replyViewModel"

    .line 18
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    sget p1, Lc/c/a/e;->reviewToolbarBackButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    new-instance p2, Lc/c/a/n/u/a/f;

    invoke-direct {p2, p0}, Lc/c/a/n/u/a/f;-><init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->sb()V

    return-void
.end method

.method public final a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/d;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0111

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "popupView"

    .line 11
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/i/f;->a(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p1

    const v1, 0x7f0a02c3

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lc/c/a/n/u/a/g;

    invoke-direct {v2, p0, p2, p1}, Lc/c/a/n/u/a/g;-><init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Landroid/widget/PopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a02c4

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc/c/a/n/u/a/h;

    invoke-direct {v1, p0, p2, p1}, Lc/c/a/n/u/a/h;-><init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/u/a/i;->a:Lc/c/a/n/u/a/i$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/u/a/i$a;->a(Landroid/os/Bundle;)Lc/c/a/n/u/a/i;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->ya:Lc/c/a/n/u/a/i;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Ca:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Ca:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Ca:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Ca:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->Ba:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->jb()Lc/c/a/n/u/a/j;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/u/a/j;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/u/a/j;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/u/a/j;

    .line 5
    invoke-virtual {v0}, Lc/c/a/n/u/a/j;->j()Lb/r/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/u/a/c;

    invoke-direct {v3, p0}, Lc/c/a/n/u/a/c;-><init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->La()V

    return-void
.end method

.method public final qb()Lc/c/a/f/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->wa:Lc/c/a/f/o;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dataBinding"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final rb()Lc/c/a/n/u/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->xa:Lc/c/a/n/u/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "replyViewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final sb()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/u/q;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    check-cast v0, Lc/c/a/n/u/q;

    .line 4
    invoke-virtual {v0}, Lc/c/a/n/u/q;->m()Lb/r/r;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/u/a/a;

    invoke-direct {v3, p0}, Lc/c/a/n/u/a/a;-><init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 5
    invoke-virtual {v0}, Lc/c/a/n/u/q;->j()Lb/r/t;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/u/a/b;

    invoke-direct {v3, p0}, Lc/c/a/n/u/a/b;-><init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 6
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;->xa:Lc/c/a/n/u/q;

    return-void
.end method

.method public final tb()Lc/c/a/n/u/a/d;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/u/a/d;

    invoke-direct {v0, p0}, Lc/c/a/n/u/a/d;-><init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V

    return-object v0
.end method

.method public final ub()Lc/c/a/n/u/a/e;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/u/a/e;

    invoke-direct {v0, p0}, Lc/c/a/n/u/a/e;-><init>(Lcom/farsitel/bazaar/ui/reviews/developer/DeveloperReplyFragment;)V

    return-object v0
.end method
