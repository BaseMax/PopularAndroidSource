.class public final Lcom/adyen/threeds2/internal/ui/c/e;
.super Lcom/adyen/threeds2/internal/ui/c/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adyen/threeds2/internal/ui/c/d<",
        "Lcom/adyen/threeds2/internal/a/a/b/n;",
        "Lcom/adyen/threeds2/internal/ui/b/c;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/Button;

.field private final b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/ui/c/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/c/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/adyen/threeds2/internal/ui/c/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget p1, Lcom/adyen/threeds2/R$id;->button_app:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/e;->a:Landroid/widget/Button;

    .line 54
    sget p1, Lcom/adyen/threeds2/R$id;->button_continue:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/e;->b:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method protected a(Lcom/adyen/threeds2/internal/a/a/b/n;)V
    .locals 2

    .line 64
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/n;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/c/e;->a:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/e;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/n;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/e;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/e;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/e;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/n;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/e;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected synthetic b(Lcom/adyen/threeds2/internal/a/a/b/l;)V
    .locals 0

    .line 35
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/n;

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/e;->a(Lcom/adyen/threeds2/internal/a/a/b/n;)V

    return-void
.end method

.method public b(Lcom/adyen/threeds2/internal/a/a/b/n;)V
    .locals 1

    .line 97
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/n;->m()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/e;->setInfoTextOrHide(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 101
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/e;->setInfoTextIndicatorVisibility(Z)V

    :cond_0
    return-void
.end method

.method protected getChallengeLayoutId()I
    .locals 1

    .line 59
    sget v0, Lcom/adyen/threeds2/R$layout;->a3ds2_view_challenge_out_of_band:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->onClick(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/e;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/e;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/e;->b:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/e;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/ui/b/c;

    invoke-interface {p1}, Lcom/adyen/threeds2/internal/ui/b/c;->e()V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/e;->a:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/e;->a:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 90
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/e;->a:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 91
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/e;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object v0

    check-cast v0, Lcom/adyen/threeds2/internal/ui/b/c;

    invoke-interface {v0, p1}, Lcom/adyen/threeds2/internal/ui/b/c;->a(Landroid/net/Uri;)V

    :cond_1
    :goto_0
    return-void
.end method
