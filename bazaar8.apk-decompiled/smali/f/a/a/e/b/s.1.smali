.class public Lf/a/a/e/b/s;
.super Ljava/lang/Object;
.source "HeaderInflater.java"

# interfaces
.implements Lf/a/a/e/b/Q;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
    .locals 9

    .line 2
    sget v0, Lf/a/a/f;->inline_header:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    sget v0, Lf/a/a/e;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    sget v1, Lf/a/a/e;->backbutton:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 7
    iget-object v2, p0, Lf/a/a/e/b/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-interface {p2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lf/a/a/e/b/r;

    invoke-direct {v0, p0, p2, v1}, Lf/a/a/e/b/r;-><init>(Lf/a/a/e/b/s;Lf/a/a/e/g;Landroidx/appcompat/widget/AppCompatImageButton;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v2, 0x2

    new-array v3, v2, [[I

    const/4 v4, 0x1

    new-array v5, v4, [I

    const v6, 0x10100a7

    const/4 v7, 0x0

    aput v6, v5, v7

    aput-object v5, v3, v7

    new-array v5, v7, [I

    aput-object v5, v3, v4

    new-array v2, v2, [I

    .line 12
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v5

    invoke-virtual {v5}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v5

    .line 13
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lir/cafebazaar/inline/ui/Theme;->g()I

    move-result v6

    const v8, 0x3e4ccccd    # 0.2f

    .line 14
    invoke-static {v5, v6, v8}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v5

    aput v5, v2, v7

    .line 15
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p2

    invoke-virtual {p2}, Lir/cafebazaar/inline/ui/Theme;->g()I

    move-result p2

    aput p2, v2, v4

    invoke-direct {v0, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 16
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 17
    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/s;->a:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/e;->header:I

    return v0
.end method
