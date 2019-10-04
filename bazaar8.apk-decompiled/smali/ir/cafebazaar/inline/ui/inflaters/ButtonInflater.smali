.class public Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;
.super Lf/a/a/e/b/n;
.source "ButtonInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

.field public e:Lf/a/a/g/d/a/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->secondary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;)Lf/a/a/g/d/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->e:Lf/a/a/g/d/a/b;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 12

    .line 2
    sget v0, Lf/a/a/e;->button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 3
    sget v1, Lf/a/a/e;->button_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 4
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 6
    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    invoke-virtual {v3, v2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->a(Lir/cafebazaar/inline/ui/Theme;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 7
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x2

    new-array v5, v4, [[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x0

    const v9, 0x10100a7

    aput v9, v7, v8

    aput-object v7, v5, v8

    new-array v7, v8, [I

    aput-object v7, v5, v6

    new-array v4, v4, [I

    .line 8
    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v7

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v9

    iget-object v10, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    .line 9
    invoke-virtual {v10}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->h()Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    move-result-object v10

    sget-object v11, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->primary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    if-ne v10, v11, :cond_0

    const v10, 0x3e4ccccd    # 0.2f

    goto :goto_0

    :cond_0
    const v10, 0x3f4ccccd    # 0.8f

    .line 10
    :goto_0
    invoke-static {v7, v9, v10}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v7

    aput v7, v4, v8

    .line 11
    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v7

    aput v7, v4, v6

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 12
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v3, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->e:Lf/a/a/g/d/a/b;

    if-eqz v3, :cond_1

    .line 15
    new-instance v3, Lf/a/a/e/b/j;

    invoke-direct {v3, p0, p1}, Lf/a/a/e/b/j;-><init>(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;Lf/a/a/e/g;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->e:Lf/a/a/g/d/a/b;

    instance-of v0, v0, Lf/a/a/g/d/a/q;

    if-eqz v0, :cond_2

    .line 17
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lf/a/a/d;->ic_inline_share:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 18
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    invoke-virtual {v0, v2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->a(Lir/cafebazaar/inline/ui/Theme;)I

    move-result v0

    invoke-static {p1, v0}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 19
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-object p2
.end method

.method public a(Lf/a/a/g/d/a/b;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->e:Lf/a/a/g/d/a/b;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->g()I

    move-result v0

    return v0
.end method

.method public c()Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;
    .locals 1

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->d:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater;->c:Ljava/lang/String;

    return-void
.end method
