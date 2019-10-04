.class public Lcom/ebay/mobile/browse/TermsDialogFragment;
.super Lcom/ebay/mobile/activities/BaseDialogFragment;
.source "TermsDialogFragment.java"


# static fields
.field public static final EXTRA_TERMS:Ljava/lang/String; = "terms"

.field public static final EXTRA_TERMS_HEADER:Ljava/lang/String; = "header"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/ebay/mobile/browse/TermsDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/TermsDialogFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x7f130019

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/ebay/mobile/browse/TermsDialogFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p3, 0x7f0d0526

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 42
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/TermsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "header"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 45
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/TermsDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/TermsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v0, "terms"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_1

    const v0, 0x7f0a1264

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/TermsDialogFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0527

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const p2, 0x7f0a0238

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/ebay/android/widget/ButtonBar;

    .line 63
    invoke-virtual {p1}, Lcom/ebay/android/widget/ButtonBar;->getPositiveButton()Landroid/widget/Button;

    move-result-object p1

    new-instance p2, Lcom/ebay/mobile/browse/-$$Lambda$TermsDialogFragment$I6-J581s2ZcTQiyvRMaEJdmlucs;

    invoke-direct {p2, p0}, Lcom/ebay/mobile/browse/-$$Lambda$TermsDialogFragment$I6-J581s2ZcTQiyvRMaEJdmlucs;-><init>(Lcom/ebay/mobile/browse/TermsDialogFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
