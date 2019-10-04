.class public Lir/cafebazaar/inline/ui/inflaters/TextInflater;
.super Lf/a/a/e/b/n;
.source "TextInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;,
        Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;
    }
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field public d:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/e/b/n;-><init>()V

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->normal:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->d:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/e/g;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .line 1
    check-cast p2, Landroid/widget/TextView;

    .line 2
    invoke-interface {p1}, Lf/a/a/e/g;->g()Lir/cafebazaar/inline/ui/Theme;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/Theme;->j()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    sget v1, Lf/a/a/e;->text_style_tag:I

    iget-object v2, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->d:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    invoke-virtual {p2, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->d:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&#8203;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->d:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    sget-object v3, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->title:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    if-eq v2, v3, :cond_1

    .line 8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 9
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v3

    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v3, p2, p1}, Lf/a/a/f/e;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)Landroid/text/Html$ImageGetter;

    move-result-object p1

    new-instance v3, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;

    invoke-direct {v3, v0}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;-><init>(Lir/cafebazaar/inline/ui/Theme;)V

    .line 10
    invoke-static {v1, v2, p1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v2

    invoke-interface {p1}, Lf/a/a/e/g;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Lf/a/a/f/e;->a(Landroid/widget/TextView;Landroid/content/res/Resources;)Landroid/text/Html$ImageGetter;

    move-result-object p1

    new-instance v2, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;

    invoke-direct {v2, v0}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$a;-><init>(Lir/cafebazaar/inline/ui/Theme;)V

    .line 12
    invoke-static {v1, p1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->c:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p2
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->d:Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    sget v0, Lf/a/a/f;->inline_text:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->c:Ljava/lang/String;

    return-void
.end method
