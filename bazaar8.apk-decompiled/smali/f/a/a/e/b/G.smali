.class public Lf/a/a/e/b/G;
.super Lf/a/a/e/b/L;
.source "SearchHeaderInflater.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/L;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_search_header:I

    return v0
.end method

.method public a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
    .locals 12

    .line 2
    invoke-super {p0, p1, p2}, Lf/a/a/e/b/L;->a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;

    move-result-object p1

    .line 3
    sget v0, Lf/a/a/e;->search:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    .line 4
    sget v1, Lf/a/a/e;->backbutton:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 5
    sget v2, Lf/a/a/e;->search_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 6
    invoke-interface {p2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v3

    invoke-virtual {v3}, Lf/a/a/g/d/d;->d()Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_1

    .line 7
    new-instance v3, Lf/a/a/e/b/D;

    invoke-direct {v3, p0, p2, v1}, Lf/a/a/e/b/D;-><init>(Lf/a/a/e/b/G;Lf/a/a/e/g;Landroidx/appcompat/widget/AppCompatImageButton;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v6, 0x2

    new-array v7, v6, [[I

    const/4 v8, 0x1

    new-array v9, v8, [I

    const v10, 0x10100a7

    aput v10, v9, v5

    aput-object v9, v7, v5

    new-array v9, v5, [I

    aput-object v9, v7, v8

    new-array v6, v6, [I

    .line 9
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v9

    invoke-virtual {v9}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v9

    .line 10
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v10

    invoke-virtual {v10}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v10

    const v11, 0x3e4ccccd    # 0.2f

    .line 11
    invoke-static {v9, v10, v11}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v9

    aput v9, v6, v5

    .line 12
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p2

    invoke-virtual {p2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p2

    aput p2, v6, v8

    invoke-direct {v3, v7, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 13
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatImageButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 14
    new-instance p2, Lf/a/a/e/b/E;

    invoke-direct {p2, p0, v1, v2}, Lf/a/a/e/b/E;-><init>(Lf/a/a/e/b/G;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 15
    new-instance p2, Lf/a/a/e/b/F;

    invoke-direct {p2, p0, v1, v2}, Lf/a/a/e/b/F;-><init>(Lf/a/a/e/b/G;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatImageButton;)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 16
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 17
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 18
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 20
    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 22
    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_0
    return-object p1
.end method

.method public f()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/e;->header:I

    return v0
.end method
