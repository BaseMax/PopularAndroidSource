.class public Lf/a/a/e/a/m;
.super Lf/a/a/e/a/d;
.source "TextChanger.java"


# instance fields
.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/a/a/e/a/m;->c:Ljava/lang/String;

    .line 3
    new-instance v0, Lf/a/a/e/a/a/c;

    invoke-direct {v0}, Lf/a/a/e/a/a/c;-><init>()V

    invoke-virtual {p0, v0}, Lf/a/a/e/a/p;->a(Lf/a/a/e/a/a/a;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Lf/a/a/e/g;)V
    .locals 4

    .line 2
    check-cast p1, Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lf/a/a/e/a/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4
    sget v0, Lf/a/a/e;->text_style_tag:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&#8203;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf/a/a/e/a/m;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    sget-object v2, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->title:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    if-eq v0, v2, :cond_1

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v2

    .line 9
    invoke-interface {p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v3

    .line 10
    invoke-virtual {v2, p1, v3}, Lf/a/a/f/e;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)Landroid/text/Html$ImageGetter;

    move-result-object v2

    new-instance v3, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;

    .line 11
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p2

    invoke-direct {v3, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;-><init>(Lir/cafebazaar/inline/ui/Theme;)V

    .line 12
    invoke-static {v1, v0, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v0

    .line 14
    invoke-interface {p2}, Lf/a/a/e/g;->k()Lf/a/a/e/l;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v2

    .line 15
    invoke-virtual {v0, p1, v2}, Lf/a/a/f/e;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)Landroid/text/Html$ImageGetter;

    move-result-object v0

    new-instance v2, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;

    .line 16
    invoke-interface {p2}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object p2

    invoke-direct {v2, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;-><init>(Lir/cafebazaar/inline/ui/Theme;)V

    .line 17
    invoke-static {v1, v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object p2, p0, Lf/a/a/e/a/m;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/a/m;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/e/a/m;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
