.class public Lf/a/a/e/b/b/g;
.super Lf/a/a/e/b/b/B;
.source "CheckBoxInflater.java"


# instance fields
.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/b/B;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lf/a/a/e/b/b/g;->f:Z

    .line 3
    iput-boolean v0, p0, Lf/a/a/e/b/b/g;->g:Z

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/b/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf/a/a/e/b/b/g;->g:Z

    return p0
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 8

    .line 5
    sget v0, Lf/a/a/e;->checkbox:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 6
    sget v0, Lf/a/a/e;->text:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 7
    invoke-virtual {p0}, Lf/a/a/e/b/b/B;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    new-instance v1, Lf/a/a/e/b/b/e;

    invoke-direct {v1, p0, v3}, Lf/a/a/e/b/b/e;-><init>(Lf/a/a/e/b/b/g;Landroidx/appcompat/widget/AppCompatCheckBox;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v0, Lf/a/a/e;->error:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 11
    iget-boolean v0, p0, Lf/a/a/e/b/b/g;->f:Z

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 12
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v5, 0x0

    new-array v6, v5, [I

    aput-object v6, v2, v5

    new-array v1, v1, [I

    .line 13
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v6

    aput v6, v1, v5

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 14
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    invoke-interface {p1}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    check-cast v0, Lf/a/a/e/c;

    new-instance v7, Lf/a/a/e/b/b/f;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lf/a/a/e/b/b/f;-><init>(Lf/a/a/e/b/b/g;Landroidx/appcompat/widget/AppCompatCheckBox;Landroid/widget/TextView;Landroid/view/View;Lf/a/a/e/g;)V

    invoke-virtual {p0, v0, v7}, Lf/a/a/e/b/b/B;->a(Lf/a/a/e/c;Lf/a/a/e/b/b/B$a;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lf/a/a/e/b/b/g;->f:Z

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lf/a/a/e/b/b/g;->g:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_checkbox:I

    return v0
.end method
