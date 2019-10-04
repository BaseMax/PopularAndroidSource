.class public Lf/a/a/e/a/b;
.super Lf/a/a/e/a/d;
.source "ButtonChanger.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lf/a/a/g/d/a/b;

.field public e:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/e/a/b;->c:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lf/a/a/e/a/b;->d:Lf/a/a/g/d/a/b;

    .line 4
    iput-object v0, p0, Lf/a/a/e/a/b;->e:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    .line 5
    new-instance v0, Lf/a/a/e/a/a/c;

    invoke-direct {v0}, Lf/a/a/e/a/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lf/a/a/e/a/p;->a(Lf/a/a/e/a/a/a;)V

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/a/b;)Lf/a/a/g/d/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/e/a/b;->d:Lf/a/a/g/d/a/b;

    return-object p0
.end method


# virtual methods
.method public a(Lf/a/a/g/d/a/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lf/a/a/e/a/b;->d:Lf/a/a/g/d/a/b;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lf/a/a/e/a/b;->e:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    return-void
.end method

.method public b(Landroid/view/View;Lf/a/a/e/g;)V
    .locals 9

    .line 2
    instance-of v0, p1, Landroidx/appcompat/widget/AppCompatButton;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Lf/a/a/e;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 5
    :goto_0
    iget-object v0, p0, Lf/a/a/e/a/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lf/a/a/e/a/b;->d:Lf/a/a/g/d/a/b;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lf/a/a/e/a/a;

    invoke-direct {v0, p0, p2}, Lf/a/a/e/a/a;-><init>(Lf/a/a/e/a/b;Lf/a/a/e/g;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lf/a/a/e/a/b;->e:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p2

    if-nez p2, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object v0, p0, Lf/a/a/e/a/b;->e:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundResource(I)V

    .line 12
    iget-object v0, p0, Lf/a/a/e/a/b;->e:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    invoke-virtual {v0, p2}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->a(Lir/cafebazaar/inline/ui/Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 13
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a7

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v6, [I

    aput-object v4, v2, v3

    new-array v1, v1, [I

    .line 14
    invoke-virtual {p2}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v4

    invoke-virtual {p2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result v5

    iget-object v7, p0, Lf/a/a/e/a/b;->e:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    .line 15
    invoke-virtual {v7}, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->h()Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    move-result-object v7

    sget-object v8, Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;->primary:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    if-ne v7, v8, :cond_4

    const v7, 0x3e4ccccd    # 0.2f

    goto :goto_1

    :cond_4
    const v7, 0x3f4ccccd    # 0.8f

    .line 16
    :goto_1
    invoke-static {v4, v5, v7}, Lc/c/a/d/g/a;->a(IIF)I

    move-result v4

    aput v4, v1, v6

    .line 17
    invoke-virtual {p2}, Lir/cafebazaar/inline/ui/Theme;->h()I

    move-result p2

    aput p2, v1, v3

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 18
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/b;->d:Lf/a/a/g/d/a/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/a/e/a/b;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/a/e/a/b;->e:Lir/cafebazaar/inline/ui/inflaters/ButtonInflater$Style;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
