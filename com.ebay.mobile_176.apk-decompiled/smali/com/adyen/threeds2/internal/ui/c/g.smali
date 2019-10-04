.class public final Lcom/adyen/threeds2/internal/ui/c/g;
.super Lcom/adyen/threeds2/internal/ui/c/d;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/adyen/threeds2/internal/ui/c/d<",
        "Lcom/adyen/threeds2/internal/a/a/b/q;",
        "Lcom/adyen/threeds2/internal/ui/b/e;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/EditText;

.field private final b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/ui/c/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/c/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/adyen/threeds2/internal/ui/c/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    sget p1, Lcom/adyen/threeds2/R$id;->editText_text:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/g;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/g;->a:Landroid/widget/EditText;

    .line 52
    sget p1, Lcom/adyen/threeds2/R$id;->button_continue:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/g;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/g;->b:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method protected a(Lcom/adyen/threeds2/internal/a/a/b/q;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/g;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/ui/c/g;->setInfoLabelFor(I)V

    .line 64
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/g;->b:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/q;->m()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/g;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected synthetic b(Lcom/adyen/threeds2/internal/a/a/b/l;)V
    .locals 0

    .line 34
    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/q;

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/g;->a(Lcom/adyen/threeds2/internal/a/a/b/q;)V

    return-void
.end method

.method protected getChallengeLayoutId()I
    .locals 1

    .line 57
    sget v0, Lcom/adyen/threeds2/R$layout;->a3ds2_view_challenge_text:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->onClick(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/g;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/g;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/g;->b:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/g;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/ui/b/e;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/g;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/adyen/threeds2/internal/ui/b/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
