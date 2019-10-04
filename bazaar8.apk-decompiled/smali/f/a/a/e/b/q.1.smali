.class public Lf/a/a/e/b/q;
.super Ljava/lang/Object;
.source "FooterInflater.java"

# interfaces
.implements Lf/a/a/e/b/Q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/e/b/q$a;
    }
.end annotation


# instance fields
.field public a:Lf/a/a/e/b/q$a;

.field public b:Lf/a/a/e/b/q$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/b/q;)Lf/a/a/e/b/q$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/q;->a:Lf/a/a/e/b/q$a;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/e/b/q;)Lf/a/a/e/b/q$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/b/q;->b:Lf/a/a/e/b/q$a;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewStub;Lf/a/a/e/g;)Landroid/view/View;
    .locals 11

    .line 3
    sget v0, Lf/a/a/f;->inline_footer:I

    invoke-virtual {p1, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    sget v0, Lf/a/a/e;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 7
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 8
    iget-object v1, p0, Lf/a/a/e/b/q;->a:Lf/a/a/e/b/q$a;

    invoke-static {v1}, Lf/a/a/e/b/q$a;->a(Lf/a/a/e/b/q$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 9
    new-instance v1, Landroid/content/res/ColorStateList;

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

    new-array v5, v2, [I

    .line 10
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v8

    invoke-virtual {v8}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v8

    .line 11
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v9

    invoke-virtual {v9}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v9

    const v10, 0x3e4ccccd    # 0.2f

    .line 12
    invoke-static {v8, v9, v10}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v8

    aput v8, v5, v7

    .line 13
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v8

    invoke-virtual {v8}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v8

    aput v8, v5, v4

    invoke-direct {v1, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 15
    iget-object v1, p0, Lf/a/a/e/b/q;->a:Lf/a/a/e/b/q$a;

    invoke-static {v1}, Lf/a/a/e/b/q$a;->b(Lf/a/a/e/b/q$a;)Lf/a/a/g/d/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 16
    new-instance v1, Lf/a/a/e/b/o;

    invoke-direct {v1, p0, p2}, Lf/a/a/e/b/o;-><init>(Lf/a/a/e/b/q;Lf/a/a/e/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lf/a/a/e/b/q;->b:Lf/a/a/e/b/q$a;

    if-eqz v0, :cond_1

    .line 18
    sget v0, Lf/a/a/e;->separator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 19
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 20
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    sget v0, Lf/a/a/e;->secondarybutton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 22
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 23
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lir/cafebazaar/inline/ui/Theme;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 24
    iget-object v1, p0, Lf/a/a/e/b/q;->b:Lf/a/a/e/b/q$a;

    invoke-static {v1}, Lf/a/a/e/b/q$a;->a(Lf/a/a/e/b/q$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v3, v2, [[I

    new-array v5, v4, [I

    aput v6, v5, v7

    aput-object v5, v3, v7

    new-array v5, v7, [I

    aput-object v5, v3, v4

    new-array v2, v2, [I

    .line 26
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v5

    invoke-virtual {v5}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v5

    .line 27
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v6

    .line 28
    invoke-static {v5, v6, v10}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v5

    aput v5, v2, v7

    .line 29
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v5

    invoke-virtual {v5}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v5

    aput v5, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 30
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 31
    iget-object v1, p0, Lf/a/a/e/b/q;->b:Lf/a/a/e/b/q$a;

    invoke-static {v1}, Lf/a/a/e/b/q$a;->b(Lf/a/a/e/b/q$a;)Lf/a/a/g/d/a/b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 32
    new-instance v1, Lf/a/a/e/b/p;

    invoke-direct {v1, p0, p2}, Lf/a/a/e/b/p;-><init>(Lf/a/a/e/b/q;Lf/a/a/e/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-object p1
.end method

.method public a(Lf/a/a/e/b/q$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/q;->a:Lf/a/a/e/b/q$a;

    return-void
.end method

.method public b(Lf/a/a/e/b/q$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/b/q;->b:Lf/a/a/e/b/q$a;

    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/e;->footer:I

    return v0
.end method
