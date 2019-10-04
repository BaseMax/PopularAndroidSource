.class public Lir/cafebazaar/inline/ui/inflaters/DividerInflater;
.super Lf/a/a/e/b/n;
.source "DividerInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;
    }
.end annotation


# instance fields
.field public c:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->line:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->c:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    const/16 v0, 0xc

    .line 3
    iput v0, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->d:I

    .line 4
    iput v0, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->e:I

    .line 5
    iput v0, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->f:I

    .line 6
    iput v0, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->g:I

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->c:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    sget-object v1, Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;->line:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result v0

    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result p1

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v0, p1, v1}, Lc/c/a/d/g/a;->a(IIF)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lir/cafebazaar/inline/ui/Theme;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    iget v0, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->d:I

    invoke-static {v0}, Lf/a/a/f/c;->a(I)I

    move-result v0

    iget v1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->g:I

    .line 8
    invoke-static {v1}, Lf/a/a/f/c;->a(I)I

    move-result v1

    iget v2, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->e:I

    .line 9
    invoke-static {v2}, Lf/a/a/f/c;->a(I)I

    move-result v2

    iget v3, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->f:I

    .line 10
    invoke-static {v3}, Lf/a/a/f/c;->a(I)I

    move-result v3

    .line 11
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p2
.end method

.method public a(I)V
    .locals 0

    .line 14
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->f:I

    .line 15
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->g:I

    .line 16
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->d:I

    .line 17
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->e:I

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->c:Lir/cafebazaar/inline/ui/inflaters/DividerInflater$Style;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_divider:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->f:I

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->d:I

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->e:I

    return-void
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lir/cafebazaar/inline/ui/inflaters/DividerInflater;->g:I

    return-void
.end method
