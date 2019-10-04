.class public Lir/cafebazaar/inline/ui/inflaters/TableInflater;
.super Lf/a/a/e/b/y;
.source "TableInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;,
        Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;,
        Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;
    }
.end annotation


# instance fields
.field public i:Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

.field public j:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/y;-><init>()V

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;->normal:Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->i:Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/inflaters/TableInflater;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->i:Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .line 2
    invoke-super {p0, p1, p2}, Lf/a/a/e/b/y;->a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;

    .line 3
    new-instance v0, Lf/a/a/e/b/N;

    invoke-direct {v0, p0, p2, p2}, Lf/a/a/e/b/N;-><init>(Lir/cafebazaar/inline/ui/inflaters/TableInflater;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    sget-object v0, Lf/a/a/e/b/O;->a:[I

    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->j:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->b(Lf/a/a/e/g;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lf/a/a/d;->inline_table_round_bg:I

    invoke-static {v0, v2}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->b(Lf/a/a/e/g;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lf/a/a/d;->inline_table_rect_bg:I

    invoke-static {v0, v2}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 7
    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_4

    .line 8
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 9
    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->k:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 10
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v3

    if-nez v3, :cond_2

    .line 11
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lf/a/a/b;->gray_light:I

    invoke-static {v3, v4}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v3

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v3

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    .line 14
    :goto_1
    invoke-static {v1}, Lf/a/a/f/c;->a(I)I

    move-result v1

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 15
    :cond_4
    invoke-static {p2, v0}, Lf/a/a/f/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 16
    sget v0, Lf/a/a/e;->inlineListTopBorder:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->m:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    sget-object v2, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->table:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->c(Lf/a/a/e/g;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x8

    .line 20
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-object p2
.end method

.method public a(Lf/a/a/e/g;)Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 3

    .line 24
    invoke-virtual {p0, p1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->c(Lf/a/a/e/g;)I

    move-result v0

    .line 25
    sget-object v1, Lf/a/a/e/b/O;->b:[I

    iget-object v2, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->m:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lf/a/a/g/j/a;

    .line 27
    invoke-static {v2}, Lf/a/a/f/c;->a(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lf/a/a/g/j/a;-><init>(IIZ)V

    goto :goto_0

    .line 28
    :cond_1
    new-instance p1, Lf/a/a/g/j/a;

    invoke-static {v2}, Lf/a/a/f/c;->a(I)I

    move-result v1

    invoke-direct {p1, v0, v1, v2}, Lf/a/a/g/j/a;-><init>(IIZ)V

    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Lb/y/a/p;

    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, v2}, Lb/y/a/p;-><init>(Landroid/content/Context;I)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->m:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->i:Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->j:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    return-void
.end method

.method public final b(Lf/a/a/e/g;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lf/a/a/e/g;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lf/a/a/b;->gray_light:I

    invoke-static {p1, v0}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->k:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->l:Ljava/lang/String;

    return-void
.end method
