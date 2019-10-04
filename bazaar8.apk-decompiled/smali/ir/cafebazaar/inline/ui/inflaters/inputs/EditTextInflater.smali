.class public Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;
.super Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
.source "EditTextInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;
    }
.end annotation


# instance fields
.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/d/g;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;-><init>()V

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->normal:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->h:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->j:Z

    .line 5
    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->k:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->g:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->g:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->j:Z

    return p0
.end method

.method public static synthetic c(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->k:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
    .locals 10

    .line 6
    check-cast p1, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;

    .line 7
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    .line 8
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v7, 0x1

    new-array v1, v7, [[I

    const/4 v8, 0x0

    new-array v2, v8, [I

    aput-object v2, v1, v8

    new-array v2, v7, [I

    .line 9
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v3

    aput v3, v2, v8

    invoke-direct {v6, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 10
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 11
    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->h:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 12
    invoke-static {p1, v6}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 13
    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    new-array v3, v7, [I

    const v4, 0x101009c

    aput v4, v3, v8

    aput-object v3, v2, v8

    new-array v3, v8, [I

    aput-object v3, v2, v7

    new-array v1, v1, [I

    .line 14
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v3

    aput v3, v1, v8

    .line 15
    invoke-interface {p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lf/a/a/b;->red_notif:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v7

    invoke-direct {v5, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 16
    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->h:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->f()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 17
    invoke-interface {p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->h:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    invoke-virtual {v2}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->f()I

    move-result v2

    invoke-static {v1, v2}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v0

    invoke-static {v1, v0}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    .line 19
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v8, v8, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_0
    new-instance v9, Lf/a/a/e/b/b/s;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lf/a/a/e/b/b/s;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 22
    new-instance v6, Lf/a/a/e/b/b/t;

    move-object v0, v6

    move-object v2, p2

    move-object v3, p1

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lf/a/a/e/b/b/t;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Lf/a/a/e/b/b/B$a;)V

    invoke-virtual {p1, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 p2, 0x6

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 24
    iget-object p2, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->h:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    invoke-virtual {p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;->h()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->j:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->k:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 25
    :cond_1
    new-instance p2, Lf/a/a/e/b/b/u;

    invoke-direct {p2, p0}, Lf/a/a/e/b/b/u;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;)V

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;->setFormatter(Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText$a;)V

    .line 26
    :cond_2
    iget-object p2, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->i:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 27
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 29
    sget-object p2, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    invoke-interface {p3, p2, v8}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;Z)V

    .line 30
    invoke-virtual {p1, v7}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 31
    new-instance p2, Lf/a/a/e/b/b/v;

    invoke-direct {p2, p0, p1}, Lf/a/a/e/b/b/v;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;Lir/cafebazaar/inline/ui/inflaters/inputs/views/FormattableEditText;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    return-object v9
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->h:Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater$KeyboardType;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 4
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->i:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/d/g;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->g:Ljava/util/List;

    return-void
.end method

.method public b(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->j:Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/EditTextInflater;->k:Ljava/lang/String;

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_edittext:I

    return v0
.end method
