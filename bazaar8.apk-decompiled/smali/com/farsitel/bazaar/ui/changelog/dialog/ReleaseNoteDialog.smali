.class public final Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;
.super Lc/c/a/d/f/l;
.source "ReleaseNoteDialog.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/d/f/l<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# instance fields
.field public sa:I

.field public final ta:Lc/c/a/n/i/g;

.field public final ua:Ljava/lang/String;

.field public va:Lc/c/a/n/i/a/c;

.field public wa:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    .line 2
    new-instance v0, Lc/c/a/n/i/g;

    invoke-direct {v0}, Lc/c/a/n/i/g;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->ta:Lc/c/a/n/i/g;

    const-string v0, "ReleaseNoteDialog"

    .line 3
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->ua:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->wa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->ua:Ljava/lang/String;

    return-object v0
.end method

.method public Ta()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->sa:I

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d003f

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Wa()Lb/r/F$b;

    move-result-object p1

    .line 5
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class p2, Lc/c/a/n/i/a/c;

    invoke-virtual {p1, p2}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p1, Lc/c/a/n/i/a/c;

    .line 7
    invoke-virtual {p1}, Lc/c/a/n/i/a/c;->f()V

    .line 8
    invoke-virtual {p1}, Lc/c/a/n/i/a/c;->e()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v0

    new-instance v1, Lc/c/a/n/i/a/b;

    invoke-direct {v1, p0}, Lc/c/a/n/i/a/b;-><init>(Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 9
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->va:Lc/c/a/n/i/a/c;

    .line 10
    sget p1, Lc/c/a/e;->recyclerView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 12
    iget-object p2, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->ta:Lc/c/a/n/i/g;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 13
    sget p1, Lc/c/a/e;->dialogButtonLayout:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;

    const p2, 0x7f10005d

    .line 14
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "getString(R.string.commit)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setCommitText(Ljava/lang/String;)V

    .line 15
    new-instance p2, Lc/c/a/n/i/a/a;

    invoke-direct {p2, p0}, Lc/c/a/n/i/a/a;-><init>(Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setOnClickListener(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/ui/changelog/ReleaseNoteItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p1, :cond_1

    .line 16
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0}, Lb/o/a/d;->La()V

    .line 18
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lc/c/a/d/f/r;->onCancel()V

    sget-object p1, Lh/h;->a:Lh/h;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->ta:Lc/c/a/n/i/g;

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a;->a(Ljava/util/List;)V

    sget-object p1, Lh/h;->a:Lh/h;

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p0}, Lb/o/a/d;->La()V

    .line 21
    invoke-virtual {p0}, Lc/c/a/d/f/l;->Ra()Lc/c/a/d/f/r;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lc/c/a/d/f/r;->onCancel()V

    sget-object p1, Lh/h;->a:Lh/h;

    :cond_5
    :goto_3
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->wa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->wa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->wa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->wa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/changelog/dialog/ReleaseNoteDialog;->Qa()V

    return-void
.end method
