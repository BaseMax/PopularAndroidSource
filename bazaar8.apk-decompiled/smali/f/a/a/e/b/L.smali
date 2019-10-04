.class public abstract Lf/a/a/e/b/L;
.super Ljava/lang/Object;
.source "SearchInflater.java"

# interfaces
.implements Lf/a/a/e/b/Q;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lf/a/a/g/d/a/p;

.field public c:Lf/a/a/g/d/a/o;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/e/b/L;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lf/a/a/e/b/L;->b:Lf/a/a/g/d/a/p;

    .line 4
    iput-object v0, p0, Lf/a/a/e/b/L;->c:Lf/a/a/g/d/a/o;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lf/a/a/e/b/L;->d:Z

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lf/a/a/e/b/L;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/L;->b:Lf/a/a/g/d/a/p;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/e/b/L;)Lf/a/a/g/d/a/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/L;->c:Lf/a/a/g/d/a/o;

    return-object p0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
    .locals 13

    .line 5
    invoke-virtual {p0}, Lf/a/a/e/b/L;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 7
    sget v0, Lf/a/a/e;->search_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 8
    sget v1, Lf/a/a/e;->search:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatEditText;

    .line 9
    sget v1, Lf/a/a/e;->search_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 10
    sget v1, Lf/a/a/e;->clear_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 11
    sget v1, Lf/a/a/e;->divider:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    .line 13
    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x2

    new-array v4, v3, [[I

    const/4 v10, 0x1

    new-array v5, v10, [I

    const/4 v6, 0x0

    const v11, 0x10100a7

    aput v11, v5, v6

    aput-object v5, v4, v6

    new-array v5, v6, [I

    aput-object v5, v4, v10

    new-array v3, v3, [I

    .line 14
    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v5

    .line 15
    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v11

    const v12, 0x3e4ccccd    # 0.2f

    .line 16
    invoke-static {v5, v11, v12}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v5

    aput v5, v3, v6

    .line 17
    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v5

    aput v5, v3, v10

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 18
    invoke-virtual {v8, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    invoke-virtual {v9, v2}, Landroidx/appcompat/widget/AppCompatImageButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v3

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v4

    const v5, 0x3f59999a    # 0.85f

    invoke-static {v3, v4, v5}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    invoke-static {v7, v2}, Lb/i/k/z;->a(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 23
    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->e()I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 24
    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->b()I

    move-result p1

    invoke-virtual {v7, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 25
    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setInputType(I)V

    const/4 p1, 0x3

    .line 26
    invoke-virtual {v7, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 27
    iget-object p1, p0, Lf/a/a/e/b/L;->e:Ljava/lang/String;

    invoke-virtual {v7, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Lf/a/a/e/b/L;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {v7, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    :cond_0
    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 31
    new-instance p1, Lf/a/a/e/b/H;

    move-object v1, p1

    move-object v2, p0

    move-object v3, v9

    move-object v4, v7

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lf/a/a/e/b/H;-><init>(Lf/a/a/e/b/L;Landroidx/appcompat/widget/AppCompatImageButton;Landroidx/appcompat/widget/AppCompatEditText;Lf/a/a/e/g;Landroid/view/View;)V

    invoke-virtual {v7, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 32
    iget-boolean p1, p0, Lf/a/a/e/b/L;->d:Z

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 34
    invoke-interface {p2}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object p1

    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 35
    invoke-virtual {p1, v10, v10}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 36
    :cond_1
    iget-object p1, p0, Lf/a/a/e/b/L;->c:Lf/a/a/g/d/a/o;

    if-eqz p1, :cond_2

    .line 37
    new-instance p1, Lf/a/a/e/b/I;

    invoke-direct {p1, p0, v7, p2, v0}, Lf/a/a/e/b/I;-><init>(Lf/a/a/e/b/L;Landroidx/appcompat/widget/AppCompatEditText;Lf/a/a/e/g;Landroid/view/View;)V

    invoke-virtual {v7, p1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 38
    :cond_2
    new-instance p1, Lf/a/a/e/b/J;

    invoke-direct {p1, p0, v7, p2, v0}, Lf/a/a/e/b/J;-><init>(Lf/a/a/e/b/L;Landroidx/appcompat/widget/AppCompatEditText;Lf/a/a/e/g;Landroid/view/View;)V

    invoke-virtual {v8, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    new-instance p1, Lf/a/a/e/b/K;

    invoke-direct {p1, p0, v7, p2}, Lf/a/a/e/b/K;-><init>(Lf/a/a/e/b/L;Landroidx/appcompat/widget/AppCompatEditText;Lf/a/a/e/g;)V

    invoke-virtual {v9, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public a(Lf/a/a/g/d/a/o;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lf/a/a/e/b/L;->c:Lf/a/a/g/d/a/o;

    return-void
.end method

.method public a(Lf/a/a/g/d/a/p;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/L;->b:Lf/a/a/g/d/a/p;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lf/a/a/e/b/L;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lf/a/a/e/b/L;->d:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/L;->a:Ljava/lang/String;

    return-void
.end method
