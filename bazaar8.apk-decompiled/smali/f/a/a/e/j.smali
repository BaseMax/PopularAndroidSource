.class public Lf/a/a/e/j;
.super Lf/a/a/g/c;
.source "InlineErrorDialog.java"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/c;-><init>(Lf/a/a/e/g;)V

    .line 2
    iput-object p2, p0, Lf/a/a/e/j;->c:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lf/a/a/e/j;->d:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lf/a/a/e/j;->e:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lf/a/a/e/j;)Lb/b/a/l;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->d()Lb/b/a/l;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lb/b/a/l;
    .locals 4

    .line 2
    new-instance v0, Lb/b/a/l$a;

    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    sget v2, Lf/a/a/h;->DialogInline:I

    invoke-direct {v0, v1, v2}, Lb/b/a/l$a;-><init>(Landroid/content/Context;I)V

    .line 3
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v1

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    sget v2, Lf/a/a/f;->inline_error_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    sget v2, Lf/a/a/e;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lf/a/a/e/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    sget v2, Lf/a/a/e;->text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lf/a/a/e/j;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    sget v2, Lf/a/a/e;->ok_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lf/a/a/e/i;

    invoke-direct {v3, p0}, Lf/a/a/e/i;-><init>(Lf/a/a/e/j;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v0, v1}, Lb/b/a/l$a;->b(Landroid/view/View;)Lb/b/a/l$a;

    .line 9
    invoke-virtual {v0}, Lb/b/a/l$a;->a()Lb/b/a/l;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->c()Lf/a/a/e/g;

    move-result-object v0

    invoke-interface {v0}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {v0}, Lir/cafebazaar/inline/ui/InlineActivity;->w()Lf/a/a/g/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/d/d;->f()Z

    return-void
.end method
