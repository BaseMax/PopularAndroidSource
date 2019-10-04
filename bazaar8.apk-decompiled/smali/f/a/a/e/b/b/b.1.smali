.class public Lf/a/a/e/b/b/b;
.super Ljava/lang/Object;
.source "AddressInputInflater.java"

# interfaces
.implements Lf/a/a/e/b/b/A$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Landroid/view/View;Lf/a/a/e/g;Lir/cafebazaar/inline/ui/inflaters/inputs/ControllableInputInflater$InputController;)Lf/a/a/e/b/b/B$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/a/a/e/b/b/A$a<",
        "Lf/a/a/g/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic b:Lf/a/a/e/g;

.field public final synthetic c:Landroidx/appcompat/widget/AppCompatTextView;

.field public final synthetic d:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;Landroidx/appcompat/widget/AppCompatTextView;Lf/a/a/e/g;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/b/b;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    iput-object p2, p0, Lf/a/a/e/b/b/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p3, p0, Lf/a/a/e/b/b/b;->b:Lf/a/a/e/g;

    iput-object p4, p0, Lf/a/a/e/b/b/b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/g/a/a;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lf/a/a/e/b/b/b;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-static {v0, p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;Lf/a/a/g/a/a;)Lf/a/a/g/a/a;

    .line 3
    iget-object p1, p0, Lf/a/a/e/b/b/b;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;)Lf/a/a/g/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/a/g/a/a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lf/a/a/e/b/b/b;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;)Lf/a/a/g/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lf/a/a/g/a/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lf/a/a/e/b/b/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lf/a/a/e/b/b/b;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-virtual {v1}, Lf/a/a/e/b/b/B;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/a/a/e/b/b/b;->b:Lf/a/a/e/g;

    invoke-interface {v1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lf/a/a/g;->selected:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v0, p1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    iget-object p1, p0, Lf/a/a/e/b/b/b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lf/a/a/e/b/b/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lf/a/a/e/b/b/b;->a:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lf/a/a/e/b/b/b;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;)Lf/a/a/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/a/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lf/a/a/e/b/b/b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v0, p0, Lf/a/a/e/b/b/b;->d:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;->a(Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;)Lf/a/a/g/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a/a/g/a/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lf/a/a/g/a/a;

    invoke-virtual {p0, p1}, Lf/a/a/e/b/b/b;->a(Lf/a/a/g/a/a;)V

    return-void
.end method

.method public onDismiss()V
    .locals 0

    return-void
.end method
