.class public Lf/a/a/g/a/t;
.super Lf/a/a/g/c;
.source "AddressRemoveDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/a/a/g/a/t$a;
    }
.end annotation


# instance fields
.field public c:Lf/a/a/g/a/t$a;

.field public d:Lf/a/a/g/a/a;


# direct methods
.method public constructor <init>(Lf/a/a/e/g;Lf/a/a/g/a/a;Lf/a/a/g/a/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/g/c;-><init>(Lf/a/a/e/g;)V

    .line 2
    iput-object p3, p0, Lf/a/a/g/a/t;->c:Lf/a/a/g/a/t$a;

    .line 3
    iput-object p2, p0, Lf/a/a/g/a/t;->d:Lf/a/a/g/a/a;

    return-void
.end method

.method public static synthetic a(Lf/a/a/g/a/t;)Lf/a/a/g/a/t$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/g/a/t;->c:Lf/a/a/g/a/t$a;

    return-object p0
.end method

.method public static synthetic b(Lf/a/a/g/a/t;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->b()V

    return-void
.end method

.method public static synthetic c(Lf/a/a/g/a/t;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf/a/a/g/c;->b()V

    return-void
.end method


# virtual methods
.method public a()Lb/b/a/l;
    .locals 7

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

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4
    sget v2, Lf/a/a/f;->inline_address_remove_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 5
    sget v2, Lf/a/a/e;->title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6
    sget v3, Lf/a/a/e;->raw_address:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 7
    sget v4, Lf/a/a/e;->delete:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 8
    sget v5, Lf/a/a/e;->cancel:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 9
    iget-object v6, p0, Lf/a/a/g/a/t;->d:Lf/a/a/g/a/a;

    invoke-virtual {v6}, Lf/a/a/g/a/a;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v2, p0, Lf/a/a/g/a/t;->d:Lf/a/a/g/a/a;

    invoke-virtual {v2}, Lf/a/a/g/a/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    new-instance v2, Lf/a/a/g/a/r;

    invoke-direct {v2, p0}, Lf/a/a/g/a/r;-><init>(Lf/a/a/g/a/t;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance v2, Lf/a/a/g/a/s;

    invoke-direct {v2, p0}, Lf/a/a/g/a/s;-><init>(Lf/a/a/g/a/t;)V

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    invoke-virtual {v0, v1}, Lb/b/a/l$a;->b(Landroid/view/View;)Lb/b/a/l$a;

    .line 14
    invoke-virtual {v0}, Lb/b/a/l$a;->a()Lb/b/a/l;

    move-result-object v0

    return-object v0
.end method
