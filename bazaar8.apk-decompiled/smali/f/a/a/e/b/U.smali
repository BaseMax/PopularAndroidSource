.class public Lf/a/a/e/b/U;
.super Lf/a/a/e/b/n;
.source "VideoCommentInflater.java"


# instance fields
.field public c:Lf/a/a/g/c/a;

.field public d:Lc/c/a/d/c/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    .line 2
    sget-object v0, Lf/a/a/b/a;->b:Lc/c/a/d/c/b;

    iput-object v0, p0, Lf/a/a/e/b/U;->d:Lc/c/a/d/c/b;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/U;)Lc/c/a/d/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/U;->d:Lc/c/a/d/c/b;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/e/b/U;)Lf/a/a/g/c/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/U;->c:Lf/a/a/g/c/a;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .line 3
    sget v0, Lf/a/a/e;->tv_inline_comment_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4
    sget v1, Lf/a/a/e;->tv_inline_comment_date:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 5
    sget v2, Lf/a/a/e;->tv_inline_comment_body:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    sget v3, Lf/a/a/e;->inline_comment_report:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 7
    iget-object v4, p0, Lf/a/a/e/b/U;->c:Lf/a/a/g/c/a;

    invoke-virtual {v4}, Lf/a/a/g/c/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v4, p0, Lf/a/a/e/b/U;->c:Lf/a/a/g/c/a;

    invoke-virtual {v4}, Lf/a/a/g/c/a;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v4, p0, Lf/a/a/e/b/U;->c:Lf/a/a/g/c/a;

    invoke-virtual {v4}, Lf/a/a/g/c/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 11
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v4

    invoke-virtual {v4}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v4

    .line 12
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v5

    invoke-virtual {v5}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v5

    .line 13
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v6

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lf/a/a/b;->inline_comment_text_color:I

    invoke-static {v4, v5}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v5

    .line 15
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v6, Lf/a/a/b;->inline_comment_primary_color:I

    invoke-static {v4, v6}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v4

    .line 16
    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lf/a/a/b;->inline_comment_background_color:I

    invoke-static {v6, v7}, Lb/i/b/a;->a(Landroid/content/Context;I)I

    move-result v6

    .line 17
    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, v4}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 20
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    new-instance v0, Lf/a/a/e/b/T;

    invoke-direct {v0, p0, p1}, Lf/a/a/e/b/T;-><init>(Lf/a/a/e/b/U;Lf/a/a/e/g;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public a(Lf/a/a/g/c/a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/U;->c:Lf/a/a/g/c/a;

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    sget v0, Lf/a/a/f;->inline_video_comment:I

    return v0
.end method
