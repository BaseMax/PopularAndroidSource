.class public final Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;
.super Lc/c/a/d/f/e;
.source "VideoDownloadFragment.kt"


# instance fields
.field public la:Landroid/widget/ProgressBar;

.field public ma:Landroid/view/View;

.field public na:Landroid/view/View;

.field public oa:Landroidx/recyclerview/widget/RecyclerView;

.field public pa:Lc/c/a/n/j/c/n;

.field public qa:Lc/c/a/n/j/c/a;

.field public ra:Lc/c/a/n/j/c/d;

.field public sa:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/e;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;)Lc/c/a/n/j/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->qa:Lc/c/a/n/j/c/a;

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/f/e;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->Wa()V

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->sa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final Ua()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ma:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->la:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "progressBar"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "progressBarParent"

    .line 3
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Va()V
    .locals 3

    .line 1
    new-instance v0, Lc/c/a/n/j/c/a;

    invoke-direct {v0}, Lc/c/a/n/j/c/a;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->qa:Lc/c/a/n/j/c/a;

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->qa:Lc/c/a/n/j/c/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lc/c/a/n/j/c/b;

    invoke-direct {v2, p0}, Lc/c/a/n/j/c/b;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;)V

    invoke-virtual {v0, v2}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/m;)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->oa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->qa:Lc/c/a/n/j/c/a;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    :cond_0
    const-string v0, "recyclerView"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public final Wa()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->Xa()V

    return-void
.end method

.method public final Xa()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ma:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->la:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_0
    const-string v0, "progressBar"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "progressBarParent"

    .line 3
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0071

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->b(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->Va()V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v0, p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;

    if-eqz v0, :cond_0

    .line 16
    check-cast p1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;)V

    .line 17
    invoke-virtual {p0}, Lb/o/a/d;->La()V

    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 3

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->Ua()V

    .line 11
    invoke-virtual {p0}, Lc/c/a/d/f/e;->Ra()Lc/c/a/d/d/c;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->pa:Lc/c/a/n/j/c/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/n/j/c/n;->a(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadQualityItem;)V

    return-void

    :cond_0
    const-string p1, "viewModel"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->Ua()V

    .line 14
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->qa:Lc/c/a/n/j/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 7

    .line 2
    invoke-super {p0, p1}, Lb/o/a/d;->b(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/d/f/e;->Sa()Lb/r/F$b;

    move-result-object p1

    .line 4
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/j/c/n;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast p1, Lc/c/a/n/j/c/n;

    .line 6
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ra:Lc/c/a/n/j/c/d;

    const/4 v1, 0x0

    const-string v2, "videoDownloadFragmentArg"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc/c/a/n/j/c/d;->d()Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ra:Lc/c/a/n/j/c/d;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lc/c/a/n/j/c/d;->e()Ljava/lang/String;

    move-result-object v3

    .line 8
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ra:Lc/c/a/n/j/c/d;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lc/c/a/n/j/c/d;->c()Ljava/lang/String;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ra:Lc/c/a/n/j/c/d;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lc/c/a/n/j/c/d;->a()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ra:Lc/c/a/n/j/c/d;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lc/c/a/n/j/c/d;->b()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, v0

    .line 11
    invoke-virtual/range {v1 .. v6}, Lc/c/a/n/j/c/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lc/c/a/n/j/c/n;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment$onActivityCreated$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 13
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->pa:Lc/c/a/n/j/c/n;

    return-void

    .line 14
    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_3
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_4
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0a00c8

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.bottomSheetContainer)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->na:Landroid/view/View;

    const v0, 0x7f0a0209

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.loadingProgress)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->la:Landroid/widget/ProgressBar;

    const v0, 0x7f0a00c9

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.bottomSheetRecyclerView)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->oa:Landroidx/recyclerview/widget/RecyclerView;

    .line 22
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->oa:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "recyclerView"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 23
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->oa:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    const v0, 0x7f0a02a2

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById<View>(R.id.progressParent)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ma:Landroid/view/View;

    .line 25
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->na:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(bottomSheetContainer)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/c/a/d/f/e;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lc/c/a/n/j/c/c;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/j/c/c;-><init>(Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void

    :cond_0
    const-string p1, "bottomSheetContainer"

    .line 27
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_1
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_2
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/e;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/j/c/d;->a:Lc/c/a/n/j/c/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/j/c/d$a;->a(Landroid/os/Bundle;)Lc/c/a/n/j/c/d;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->ra:Lc/c/a/n/j/c/d;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/e;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/download/VideoDownloadFragment;->Qa()V

    return-void
.end method
