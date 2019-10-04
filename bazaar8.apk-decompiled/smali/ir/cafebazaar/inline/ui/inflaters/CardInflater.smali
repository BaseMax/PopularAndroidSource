.class public Lir/cafebazaar/inline/ui/inflaters/CardInflater;
.super Lf/a/a/e/b/n;
.source "CardInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;,
        Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;
    }
.end annotation


# instance fields
.field public c:Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lir/cafebazaar/inline/ui/inflaters/TextInflater;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lf/a/a/g/d/a/b;

.field public f:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

.field public g:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->d:Ljava/util/List;

    .line 3
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->normal:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->f:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    .line 4
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->g:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->h:Z

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/inflaters/CardInflater;)Lf/a/a/g/d/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->e:Lf/a/a/g/d/a/b;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .line 2
    iget-boolean v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->h:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->d()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4
    :cond_0
    sget v0, Lf/a/a/e;->image_holder:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 5
    sget v1, Lf/a/a/e;->texts_holder:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 7
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8
    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->g:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    .line 9
    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->f()F

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance v2, Landroid/widget/TableLayout$LayoutParams;

    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->g:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    .line 12
    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;->g()F

    move-result v3

    invoke-direct {v2, v5, v4, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(IIF)V

    .line 13
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 15
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 16
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    :goto_0
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 17
    iget-object v7, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->c:Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    if-eqz v7, :cond_2

    .line 18
    invoke-virtual {v7, v6, v0, p1}, Lf/a/a/e/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 20
    invoke-static {v2}, Lf/a/a/f/c;->a(I)I

    move-result v2

    invoke-virtual {v0, v5, v5, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 21
    iget-object v2, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lir/cafebazaar/inline/ui/inflaters/TextInflater;

    .line 22
    invoke-virtual {v3, v6, v1, p1}, Lf/a/a/e/b/n;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 23
    :cond_3
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->e:Lf/a/a/g/d/a/b;

    if-eqz v0, :cond_4

    .line 24
    new-instance v0, Lf/a/a/e/b/k;

    invoke-direct {v0, p0, p1}, Lf/a/a/e/b/k;-><init>(Lir/cafebazaar/inline/ui/inflaters/CardInflater;Lf/a/a/e/g;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object p2
.end method

.method public a(Lf/a/a/g/d/a/b;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->e:Lf/a/a/g/d/a/b;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->f:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->g:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Style;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/ImageInflater;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->c:Lir/cafebazaar/inline/ui/inflaters/ImageInflater;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/TextInflater;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->h:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/CardInflater;->f:Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/CardInflater$Direction;->f()I

    move-result v0

    return v0
.end method
