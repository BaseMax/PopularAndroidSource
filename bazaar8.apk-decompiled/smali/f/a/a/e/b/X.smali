.class public Lf/a/a/e/b/X;
.super Lir/cafebazaar/inline/ui/inflaters/PageInflater;
.source "VideoPageInflater.java"


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a(Z)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;
    .locals 4

    .line 1
    sget v0, Lf/a/a/f;->inline_video_page:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    sget v0, Lf/a/a/e;->scroll_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    sget-object v2, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->top:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->getId()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-interface {p3}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v1

    check-cast v1, Lf/a/a/e/C;

    invoke-virtual {v1, v0}, Lf/a/a/e/C;->a(Landroidx/core/widget/NestedScrollView;)V

    .line 7
    iget-object v0, p0, Lf/a/a/e/b/X;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 8
    sget v0, Lf/a/a/e;->video_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/e/b/X;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 10
    :cond_0
    iget-object v0, p0, Lf/a/a/e/b/X;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    sget v0, Lf/a/a/e;->inline_tv_video_cover_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 12
    iget-object v1, p0, Lf/a/a/e/b/X;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lf/a/a/e/b/X;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    sget v0, Lf/a/a/e;->inline_iv_video_cover_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 15
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v1

    iget-object v2, p0, Lf/a/a/e/b/X;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 16
    :cond_2
    iget-object v0, p0, Lf/a/a/e/b/X;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lf/a/a/e/b/X;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    sget v0, Lf/a/a/e;->inline_lyt_video_cover_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    :cond_3
    invoke-interface {p3}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 19
    sget v0, Lf/a/a/e;->container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 20
    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf/a/a/e/b/n;

    .line 21
    invoke-virtual {v2, p1, v0, p3}, Lf/a/a/e/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/X;->i:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lf/a/a/e/b/X;->k:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/X;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/a/a/e/b/X;->k:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/X;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/X;->g:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/b/X;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/X;->h:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/X;->f:Ljava/lang/String;

    return-void
.end method
