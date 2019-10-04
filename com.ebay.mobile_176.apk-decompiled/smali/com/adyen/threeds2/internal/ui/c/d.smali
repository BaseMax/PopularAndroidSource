.class abstract Lcom/adyen/threeds2/internal/ui/c/d;
.super Lcom/adyen/threeds2/internal/ui/c/a;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Lcom/adyen/threeds2/internal/a/a/b/l;",
        "L::Lcom/adyen/threeds2/internal/ui/b/a;",
        ">",
        "Lcom/adyen/threeds2/internal/ui/c/a<",
        "TC;T",
        "L;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/Button;

.field private final f:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

.field private final g:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/adyen/threeds2/internal/ui/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/d;->getChallengeLayoutId()I

    move-result p2

    sget p3, Lcom/adyen/threeds2/R$id;->linearLayout_challengeContainer:I

    invoke-virtual {p0, p3}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Lcom/adyen/threeds2/internal/ui/c/d;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    sget p1, Lcom/adyen/threeds2/R$id;->textView_infoHeader:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->a:Landroid/widget/TextView;

    .line 78
    sget p1, Lcom/adyen/threeds2/R$id;->textView_infoText:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->b:Landroid/widget/TextView;

    .line 79
    sget p1, Lcom/adyen/threeds2/R$id;->textView_infoLabel:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->c:Landroid/widget/TextView;

    .line 80
    sget p1, Lcom/adyen/threeds2/R$id;->imageView_infoTextIndicator:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->d:Landroid/widget/ImageView;

    .line 81
    sget p1, Lcom/adyen/threeds2/R$id;->button_resend:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->e:Landroid/widget/Button;

    .line 82
    sget p1, Lcom/adyen/threeds2/R$id;->expandableInfoText_why:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->f:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

    .line 83
    sget p1, Lcom/adyen/threeds2/R$id;->expandableInfoText_explained:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->g:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

    .line 84
    sget p1, Lcom/adyen/threeds2/R$id;->dividerView_logos:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->h:Landroid/view/View;

    .line 85
    sget p1, Lcom/adyen/threeds2/R$id;->imageView_issuer:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->i:Landroid/widget/ImageView;

    .line 86
    sget p1, Lcom/adyen/threeds2/R$id;->imageView_scheme:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->j:Landroid/widget/ImageView;

    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 197
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1, p2}, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;->setTitle(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1, p3}, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;->setInfo(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p2, 0x8

    .line 170
    invoke-virtual {p1, p2}, Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private setImagesOrHide(Lcom/adyen/threeds2/internal/a/a/b/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->j()Lcom/adyen/threeds2/internal/a/a/b/g;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->k()Lcom/adyen/threeds2/internal/a/a/b/g;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 182
    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/d;->h:Landroid/view/View;

    invoke-direct {p0, v2, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/view/View;Z)V

    .line 183
    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/d;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/view/View;Z)V

    .line 184
    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/d;->j:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/view/View;Z)V

    goto :goto_2

    .line 186
    :cond_0
    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/d;->h:Landroid/view/View;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/view/View;Z)V

    .line 187
    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/d;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-direct {p0, v2, v4}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/view/View;Z)V

    .line 188
    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/d;->j:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/view/View;Z)V

    .line 191
    :goto_2
    sget-object v1, Lcom/adyen/threeds2/internal/a/h;->c:Lcom/adyen/threeds2/internal/a/h;

    iget-object v2, p0, Lcom/adyen/threeds2/internal/ui/c/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/adyen/threeds2/internal/a/h;->a(Landroid/widget/ImageView;Lcom/adyen/threeds2/internal/a/a/b/g;)V

    .line 192
    sget-object v0, Lcom/adyen/threeds2/internal/a/h;->c:Lcom/adyen/threeds2/internal/a/h;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Lcom/adyen/threeds2/internal/a/h;->a(Landroid/widget/ImageView;Lcom/adyen/threeds2/internal/a/a/b/g;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/adyen/threeds2/internal/a/a/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->l()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/view/View;Z)V

    .line 100
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->e:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->f:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->g:Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/l;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Lcom/adyen/threeds2/internal/ui/widget/ExpandableInfoTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->setImagesOrHide(Lcom/adyen/threeds2/internal/a/a/b/l;)V

    .line 105
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->e:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->b(Lcom/adyen/threeds2/internal/a/a/b/l;)V

    return-void
.end method

.method protected abstract b(Lcom/adyen/threeds2/internal/a/a/b/l;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method protected getChallengeContainerLayoutId()I
    .locals 1

    .line 91
    sget v0, Lcom/adyen/threeds2/R$layout;->a3ds2_view_challenge_native_container:I

    return v0
.end method

.method protected abstract getChallengeLayoutId()I
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/d;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->e:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/d;->e:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/c/d;->getChallengeListener()Lcom/adyen/threeds2/internal/ui/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/adyen/threeds2/internal/ui/b/a;->c()V

    :cond_0
    return-void
.end method

.method protected setInfoLabelFor(I)V
    .locals 2

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLabelFor(I)V

    :cond_0
    return-void
.end method

.method protected setInfoTextIndicatorVisibility(Z)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/view/View;Z)V

    return-void
.end method

.method protected setInfoTextOrHide(Ljava/lang/CharSequence;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/d;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/adyen/threeds2/internal/ui/c/d;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method
