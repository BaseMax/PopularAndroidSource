.class public final Lc/c/a/n/j/h/e;
.super Lc/c/a/d/f/e;
.source "SeasonPickerFragment.kt"


# instance fields
.field public la:Lc/c/a/n/j/h/b;

.field public ma:Lc/c/a/n/j/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/n/j/h/a<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            "Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;",
            ">;"
        }
    .end annotation
.end field

.field public na:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/e;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/j/h/e;)Lc/c/a/n/j/h/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/h/e;->la:Lc/c/a/n/j/h/b;

    return-object p0
.end method

.method public static final synthetic a(Lc/c/a/n/j/h/e;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/d/f/e;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    return-void
.end method

.method public static final synthetic b(Lc/c/a/n/j/h/e;)Lc/c/a/n/j/h/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/n/j/h/e;->ma:Lc/c/a/n/j/h/a;

    return-object p0
.end method

.method public static final synthetic c(Lc/c/a/n/j/h/e;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/j/h/e;->Ua()V

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/j/h/e;->na:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final Ua()V
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/n/j/h/b;

    iget-object v1, p0, Lc/c/a/n/j/h/e;->ma:Lc/c/a/n/j/h/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/j/h/a;->j()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Lc/c/a/n/j/h/b;-><init>(I)V

    iput-object v0, p0, Lc/c/a/n/j/h/e;->la:Lc/c/a/n/j/h/b;

    .line 2
    iget-object v0, p0, Lc/c/a/n/j/h/e;->la:Lc/c/a/n/j/h/b;

    if-eqz v0, :cond_1

    new-instance v1, Lc/c/a/n/j/h/c;

    invoke-direct {v1, p0}, Lc/c/a/n/j/h/c;-><init>(Lc/c/a/n/j/h/e;)V

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a;->a(Lc/c/a/n/c/d/m;)V

    .line 3
    :cond_1
    sget v0, Lc/c/a/e;->bottomSheetRecyclerView:I

    invoke-virtual {p0, v0}, Lc/c/a/n/j/h/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "bottomSheetRecyclerView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lc/c/a/n/j/h/e;->la:Lc/c/a/n/j/h/b;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 4
    iget-object v0, p0, Lc/c/a/n/j/h/e;->ma:Lc/c/a/n/j/h/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/j/h/a;->k()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lc/c/a/n/j/h/e;->a(Ljava/util/List;)V

    return-void
.end method

.method public final Va()Lc/c/a/n/j/h/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/j/h/a<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            "Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/farsitel/bazaar/ui/cinema/series/SeriesDetailFragment;

    const-string v2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/c/a/d/f/e;->Sa()Lb/r/F$b;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/j/j/l;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/j/j/l;

    .line 5
    invoke-virtual {p0, v0}, Lc/c/a/n/j/h/e;->a(Lc/c/a/n/j/h/a;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 6
    :cond_0
    instance-of v0, v0, Lcom/farsitel/bazaar/ui/cinema/episode/EpisodeDetailFragment;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Q()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/c/a/d/f/e;->Sa()Lb/r/F$b;

    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/j/d/t;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    check-cast v0, Lc/c/a/n/j/d/t;

    .line 9
    invoke-virtual {p0, v0}, Lc/c/a/n/j/h/e;->a(Lc/c/a/n/j/h/a;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0069

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/j/h/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lc/c/a/n/j/h/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/n/j/h/a<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            "Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerParams;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object p1

    new-instance v0, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerFragment$observeSeasonList$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/cinema/season/SeasonPickerFragment$observeSeasonList$1;-><init>(Lc/c/a/n/j/h/e;)V

    invoke-static {p0, p1, v0}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/cinema/SeriesSeason;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lc/c/a/n/j/h/e;->la:Lc/c/a/n/j/h/b;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lc/c/a/n/c/d/a;->a(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .line 2
    invoke-super {p0, p1}, Lb/o/a/d;->b(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/j/h/e;->Va()Lc/c/a/n/j/h/a;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/j/h/e;->ma:Lc/c/a/n/j/h/a;

    .line 4
    iget-object p1, p0, Lc/c/a/n/j/h/e;->ma:Lc/c/a/n/j/h/a;

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parent of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lc/c/a/n/j/h/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is null! ,it will be dismiss!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Lb/o/a/d;->La()V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    .line 7
    sget v0, Lc/c/a/e;->bottomSheetRecyclerView:I

    invoke-virtual {p0, v0}, Lc/c/a/n/j/h/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 8
    sget v0, Lc/c/a/e;->bottomSheetRecyclerView:I

    invoke-virtual {p0, v0}, Lc/c/a/n/j/h/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "bottomSheetRecyclerView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 9
    sget v0, Lc/c/a/e;->bottomSheetContainer:I

    invoke-virtual {p0, v0}, Lc/c/a/n/j/h/e;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const-string v1, "BottomSheetBehavior.from(bottomSheetContainer)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/c/a/d/f/e;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lc/c/a/n/j/h/d;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/j/h/d;-><init>(Lc/c/a/n/j/h/e;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/j/h/e;->na:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/j/h/e;->na:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/j/h/e;->na:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/n/j/h/e;->na:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/e;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/j/h/e;->Qa()V

    return-void
.end method
