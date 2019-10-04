.class public final Lc/c/a/n/p/a/a/h;
.super Lc/c/a/d/f/l;
.source "MergeAccountSuccessDialog.kt"


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

.field public final ta:Ljava/lang/String;

.field public final ua:J

.field public final va:Lc/c/a/d/f/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/d/f/r<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;"
        }
    .end annotation
.end field

.field public wa:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(JLc/c/a/d/f/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lc/c/a/d/f/r<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    iput-wide p1, p0, Lc/c/a/n/p/a/a/h;->ua:J

    iput-object p3, p0, Lc/c/a/n/p/a/a/h;->va:Lc/c/a/d/f/r;

    const-string p1, "BazaarKidsDialog"

    .line 2
    iput-object p1, p0, Lc/c/a/n/p/a/a/h;->ta:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lc/c/a/n/p/a/a/h;->va:Lc/c/a/d/f/r;

    invoke-virtual {p0, p1}, Lc/c/a/d/f/l;->a(Lc/c/a/d/f/r;)V

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/p/a/a/h;->wa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/a/a/h;->ta:Ljava/lang/String;

    return-object v0
.end method

.method public Ta()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/p/a/a/h;->sa:I

    return v0
.end method

.method public final Za()Lc/c/a/d/f/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/d/f/r<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/p/a/a/h;->va:Lc/c/a/d/f/r;

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d003d

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 3
    sget p1, Lc/c/a/e;->creditTextView:I

    invoke-virtual {p0, p1}, Lc/c/a/n/p/a/a/h;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string p2, "creditTextView"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v1, p0, Lc/c/a/n/p/a/a/h;->ua:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lc/c/a/c/g/b;->a(Landroid/content/Context;Ljava/lang/Long;Z)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    const v0, 0x7f10023c

    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    sget p1, Lc/c/a/e;->dialogButtonLayout:I

    invoke-virtual {p0, p1}, Lc/c/a/n/p/a/a/h;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;

    new-instance p2, Lc/c/a/n/p/a/a/g;

    invoke-direct {p2, p0}, Lc/c/a/n/p/a/a/g;-><init>(Lc/c/a/n/p/a/a/h;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/core/widget/DialogButtonLayout;->setOnClickListener(Lcom/farsitel/bazaar/core/widget/DialogButtonLayout$a;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/p/a/a/h;->wa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/p/a/a/h;->wa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/p/a/a/h;->wa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/n/p/a/a/h;->wa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/p/a/a/h;->Qa()V

    return-void
.end method
