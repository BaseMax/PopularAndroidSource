.class public Lf/a/a/e/b/b/l;
.super Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
.source "ChoicesInflater.java"


# instance fields
.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/d/e;",
            ">;"
        }
    .end annotation
.end field

.field public h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf/a/a/e/b/b/l;->h:I

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/b/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lf/a/a/e/b/b/l;->h:I

    return p0
.end method

.method public static synthetic a(Lf/a/a/e/b/b/l;I)I
    .locals 0

    .line 2
    iput p1, p0, Lf/a/a/e/b/b/l;->h:I

    return p1
.end method

.method public static synthetic b(Lf/a/a/e/b/b/l;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/b/l;->g:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
    .locals 10

    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 9
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v7

    .line 10
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v8, 0x0

    new-array v2, v8, [I

    aput-object v2, v1, v8

    new-array v2, v0, [I

    .line 11
    invoke-virtual {v7}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v3

    aput v3, v2, v8

    invoke-direct {v6, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 12
    invoke-virtual {v7}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    invoke-static {p1, v6}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 14
    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    new-array v3, v0, [I

    const v4, 0x101009c

    aput v4, v3, v8

    aput-object v3, v2, v8

    new-array v3, v8, [I

    aput-object v3, v2, v0

    new-array v1, v1, [I

    .line 15
    invoke-virtual {v7}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v3

    aput v3, v1, v8

    .line 16
    invoke-interface {p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lf/a/a/b;->red_notif:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v0

    invoke-direct {v5, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 17
    new-instance v9, Lf/a/a/e/b/b/h;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lf/a/a/e/b/b/h;-><init>(Lf/a/a/e/b/b/l;Lf/a/a/e/g;Landroid/widget/TextView;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 18
    invoke-interface {p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    sget v1, Lf/a/a/d;->ic_menu:I

    invoke-static {v0, v1}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 19
    invoke-virtual {v7}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v1

    invoke-static {v0, v1}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 21
    new-instance v4, Lf/a/a/e/b/b/o;

    iget-object v0, p0, Lf/a/a/e/b/b/l;->g:Ljava/util/List;

    invoke-direct {v4, p2, v0}, Lf/a/a/e/b/b/o;-><init>(Lf/a/a/e/g;Ljava/util/List;)V

    .line 22
    new-instance v0, Lf/a/a/e/b/b/i;

    invoke-direct {v0, p0, p1}, Lf/a/a/e/b/b/i;-><init>(Lf/a/a/e/b/b/l;Landroid/widget/TextView;)V

    invoke-virtual {v4, v0}, Lf/a/a/e/b/b/A;->a(Lf/a/a/e/b/b/A$a;)V

    .line 23
    new-instance v0, Lf/a/a/e/b/b/j;

    invoke-direct {v0, p0, v4, p2, p1}, Lf/a/a/e/b/b/j;-><init>(Lf/a/a/e/b/b/l;Lf/a/a/e/b/b/o;Lf/a/a/e/g;Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    new-instance v6, Lf/a/a/e/b/b/k;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lf/a/a/e/b/b/k;-><init>(Lf/a/a/e/b/b/l;Landroid/widget/TextView;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Lf/a/a/e/b/b/o;Lf/a/a/e/g;)V

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 25
    iget p2, p0, Lf/a/a/e/b/b/l;->h:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 26
    iget-object v0, p0, Lf/a/a/e/b/b/l;->g:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lf/a/a/d/e;

    invoke-virtual {p2}, Lf/a/a/d/e;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 28
    sget-object p1, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    invoke-interface {p3, p1, v8}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;Z)V

    :cond_0
    return-object v9
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 4
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lf/a/a/e/b/b/l;->h:I

    goto :goto_0

    .line 6
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lf/a/a/e/b/b/l;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lf/a/a/e/b/b/l;->h:I

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/d/e;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lf/a/a/e/b/b/l;->g:Ljava/util/List;

    return-void
.end method

.method public e(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lf/a/a/e/b/b/l;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lf/a/a/e/b/b/l;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/d/e;

    invoke-virtual {v1}, Lf/a/a/d/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public f()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_choices:I

    return v0
.end method
