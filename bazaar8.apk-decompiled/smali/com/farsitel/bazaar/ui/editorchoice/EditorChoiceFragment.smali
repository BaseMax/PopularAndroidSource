.class public final Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;
.super Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;
.source "EditorChoiceFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment$a;
    }
.end annotation


# static fields
.field public static final Ea:Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment$a;


# instance fields
.field public Fa:I

.field public Ga:Lc/c/a/n/c/d/a/f;

.field public Ha:Z

.field public Ia:Ljava/lang/String;

.field public Ja:I

.field public Ka:Lc/c/a/n/k/c;

.field public La:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ea:Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;-><init>()V

    const v0, 0x7f0d0050

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Fa:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ia:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->La:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/c/a/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ua()Lc/c/a/n/k/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ua()Lc/c/a/n/k/a;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/k/a;
    .locals 10

    .line 3
    new-instance v9, Lc/c/a/n/k/a;

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->yb()Lc/c/a/n/c/d/o$a;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->yb()Lc/c/a/n/c/d/o$a;

    move-result-object v2

    .line 6
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->yb()Lc/c/a/n/c/d/o$a;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->vb()Lc/c/a/n/c/c/a/a;

    move-result-object v4

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->ub()Lc/c/a/n/c/c/a/a;

    move-result-object v5

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->wb()Lc/c/a/n/c/c/a/a/a/k;

    move-result-object v6

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->xb()Lc/c/a/n/c/c/a/a/a/j;

    move-result-object v7

    .line 11
    invoke-virtual {p0}, Lc/c/a/n/c/c/n;->tb()Lc/c/a/n/c/c/a/a/a/i;

    move-result-object v8

    move-object v0, v9

    .line 12
    invoke-direct/range {v0 .. v8}, Lc/c/a/n/k/a;-><init>(Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/c/c/a/a;Lc/c/a/n/c/c/a/a;Lc/c/a/n/c/c/a/a/a/k;Lc/c/a/n/c/c/a/a/a/j;Lc/c/a/n/c/c/a/a/a/i;)V

    return-object v9
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Fa:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ka:Lc/c/a/n/k/c;

    const/4 v1, 0x0

    const-string v2, "editorChoiceFragmentArgs"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/k/c;->b()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v5

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ka:Lc/c/a/n/k/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/k/c;->c()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ka:Lc/c/a/n/k/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/k/c;->a()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    const/4 v11, 0x0

    .line 6
    new-instance v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;ILh/f/b/f;)V

    return-object v0

    .line 7
    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/c/n;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p1, Lc/c/a/e;->toolbarBackButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    new-instance p2, Lc/c/a/n/k/b;

    invoke-direct {p2, p0}, Lc/c/a/n/k/b;-><init>(Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f10008f

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getString(R.string.editor_choice)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->c(Ljava/lang/String;)V

    .line 4
    sget p1, Lc/c/a/e;->toolbarTitleTextView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "toolbarTitleTextView"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->rb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ga:Lc/c/a/n/c/d/a/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/c/a/n/c/d/a/f;->a()I

    move-result p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ja:I

    :goto_1
    move v5, p1

    .line 6
    new-instance p1, Lc/c/a/n/c/d/a/f;

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v0, "requireContext()"

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/d/f/o;->Na()Landroidx/appcompat/widget/Toolbar;

    move-result-object v2

    .line 9
    sget v0, Lc/c/a/e;->appBarLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->e(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    const-string v0, "appBarLayout"

    invoke-static {v3, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget v0, Lc/c/a/e;->toolbarTitleTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->e(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    .line 11
    invoke-direct/range {v0 .. v5}, Lc/c/a/n/c/d/a/f;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/Toolbar;Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;I)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ga:Lc/c/a/n/c/d/a/f;

    .line 12
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ga:Lc/c/a/n/c/d/a/f;

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/k/c;->a:Lc/c/a/n/k/c$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/k/c$a;->a(Landroid/os/Bundle;)Lc/c/a/n/k/c;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ka:Lc/c/a/n/k/c;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ia:Ljava/lang/String;

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->La:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->La:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->La:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->La:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ha:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->jb()Lc/c/a/n/k/d;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/k/d;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/k/d;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    check-cast v0, Lc/c/a/n/k/d;

    return-object v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/l/i;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->jb()Lc/c/a/n/k/d;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/f;->n(Landroid/os/Bundle;)V

    const-string v0, "totalScroll"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ga:Lc/c/a/n/c/d/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a/f;->a(I)V

    :cond_0
    return-void
.end method

.method public o(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/f;->o(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ga:Lc/c/a/n/c/d/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/c/d/a/f;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "totalScroll"

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public qa()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ga:Lc/c/a/n/c/d/a/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/c/d/a/f;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ja:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ga:Lc/c/a/n/c/d/a/f;

    .line 3
    invoke-super {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->qa()V

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->La()V

    return-void
.end method

.method public rb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/editorchoice/EditorChoiceFragment;->Ia:Ljava/lang/String;

    return-object v0
.end method
