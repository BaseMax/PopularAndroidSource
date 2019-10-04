.class public Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;
.super Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;
.source "AddressInputInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;
    }
.end annotation


# instance fields
.field public g:Lf/a/a/g/a/a;

.field public h:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater;-><init>()V

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;)Lf/a/a/g/a/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->g:Lf/a/a/g/a/a;

    return-object p0
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;Lf/a/a/g/a/a;)Lf/a/a/g/a/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->g:Lf/a/a/g/a/a;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v7, p2

    .line 3
    sget v0, Lf/a/a/e;->title:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 4
    sget v0, Lf/a/a/e;->raw_address:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 5
    invoke-interface/range {p2 .. p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v12

    .line 6
    new-instance v6, Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v13, 0x0

    new-array v2, v13, [I

    aput-object v2, v1, v13

    new-array v2, v0, [I

    .line 7
    invoke-virtual {v12}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v3

    aput v3, v2, v13

    invoke-direct {v6, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 8
    invoke-virtual {v12}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-static {v10, v6}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 10
    invoke-virtual {v12}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    invoke-static {v11, v6}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 12
    new-instance v5, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    new-array v3, v0, [I

    const v4, 0x101009c

    aput v4, v3, v13

    aput-object v3, v2, v13

    new-array v3, v13, [I

    aput-object v3, v2, v0

    new-array v1, v1, [I

    .line 13
    invoke-virtual {v12}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v3

    aput v3, v1, v13

    .line 14
    invoke-interface/range {p2 .. p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lf/a/a/b;->red_notif:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v0

    invoke-direct {v5, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 15
    new-instance v14, Lf/a/a/e/b/b/a;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lf/a/a/e/b/b/a;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;Lf/a/a/e/g;Landroid/view/View;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 16
    invoke-interface/range {p2 .. p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v0

    sget v1, Lf/a/a/d;->ic_location:I

    invoke-static {v0, v1}, Lb/i/b/a;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 17
    invoke-virtual {v12}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v1

    invoke-static {v0, v1}, Lb/i/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)V

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v11, v0, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 19
    new-instance v6, Lf/a/a/g/a/n;

    invoke-direct {v6, v7}, Lf/a/a/g/a/n;-><init>(Lf/a/a/e/g;)V

    .line 20
    new-instance v0, Lf/a/a/e/b/b/b;

    invoke-direct {v0, p0, v10, v7, v11}, Lf/a/a/e/b/b/b;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;Landroidx/appcompat/widget/AppCompatTextView;Lf/a/a/e/g;Landroidx/appcompat/widget/AppCompatTextView;)V

    invoke-virtual {v6, v0}, Lf/a/a/e/b/b/A;->a(Lf/a/a/e/b/b/A$a;)V

    .line 21
    new-instance v0, Lf/a/a/e/b/b/c;

    invoke-direct {v0, p0, v6, v7, v9}, Lf/a/a/e/b/b/c;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;Lf/a/a/g/a/n;Lf/a/a/e/g;Landroid/view/View;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v12, Lf/a/a/e/b/b/d;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move-object v3, v10

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v7}, Lf/a/a/e/b/b/d;-><init>(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;Landroid/view/View;Lf/a/a/g/a/n;Lf/a/a/e/g;)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 23
    iget-object v0, v8, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->g:Lf/a/a/g/a/a;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Lf/a/a/g/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object v0, v8, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->g:Lf/a/a/g/a/a;

    invoke-virtual {v0}, Lf/a/a/g/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-virtual {v11}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v10}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    :cond_0
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;->UP:Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;

    move-object/from16 v1, p3

    invoke-interface {v1, v0, v13}, Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController$Placeholder;Z)V

    :cond_1
    return-object v14
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->h:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 28
    instance-of v0, p1, Lf/a/a/g/a/a;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lf/a/a/g/a/a;

    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->g:Lf/a/a/g/a/a;

    :cond_0
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_addressfield:I

    return v0
.end method
