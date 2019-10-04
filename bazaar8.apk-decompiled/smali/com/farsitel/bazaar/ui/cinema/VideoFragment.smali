.class public final Lcom/farsitel/bazaar/ui/cinema/VideoFragment;
.super Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;
.source "VideoFragment.kt"


# instance fields
.field public Ea:I

.field public Fa:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;-><init>()V

    const v0, 0x7f0d0070

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->Ea:I

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->Fa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->Ea:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;
    .locals 10

    .line 2
    invoke-static {}, Lh/a/l;->a()Ljava/util/List;

    move-result-object v2

    new-instance v9, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    const-string v1, "videos-home"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;ILh/f/b/f;)V

    return-object v9
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->Za()Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 2
    sget-object v0, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    .line 3
    sget p1, Lc/c/a/e;->toolbarBazaar:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->e(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const-string p1, "toolbarBazaar"

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/l/i;

    invoke-virtual {p1}, Lc/c/a/n/l/i;->r()Ljava/lang/String;

    move-result-object v2

    const p1, 0x7f08007f

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x34

    const/4 v8, 0x0

    .line 6
    invoke-static/range {v0 .. v8}, Lc/c/a/d/g/a/i;->a(Lc/c/a/d/g/a/i;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->Fa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->Fa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->Fa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->Fa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/cinema/VideoFragment;->La()V

    return-void
.end method
