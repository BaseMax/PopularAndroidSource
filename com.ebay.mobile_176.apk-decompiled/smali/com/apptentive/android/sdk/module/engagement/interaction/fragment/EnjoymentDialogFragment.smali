.class public Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
.source "EnjoymentDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;
    .locals 1

    .line 33
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;-><init>()V

    .line 34
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 103
    sget v0, Lcom/apptentive/android/sdk/R$id;->yes:I

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "yes"

    .line 104
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->engageInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    sget v0, Lcom/apptentive/android/sdk/R$id;->no:I

    if-ne p1, v0, :cond_1

    const-string p1, "no"

    .line 106
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->engageInternal(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    sget v0, Lcom/apptentive/android/sdk/R$id;->dismiss:I

    if-ne p1, v0, :cond_2

    const-string p1, "dismiss"

    .line 108
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->engageInternal(Ljava/lang/String;)V

    .line 110
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->transit()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 40
    sget p3, Lcom/apptentive/android/sdk/R$layout;->apptentive_enjoyment_dialog_interaction:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 43
    :try_start_0
    sget p3, Lcom/apptentive/android/sdk/R$id;->title:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;

    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getNoText()Ljava/lang/String;

    move-result-object p3

    .line 50
    sget v1, Lcom/apptentive/android/sdk/R$id;->no:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    if-eqz p3, :cond_0

    .line 52
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 55
    :goto_0
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getYesText()Ljava/lang/String;

    move-result-object v1

    .line 59
    sget v2, Lcom/apptentive/android/sdk/R$id;->yes:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 60
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setActivated(Z)V

    if-eqz v1, :cond_1

    .line 62
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p3, v1

    .line 65
    :cond_1
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v1, Lcom/apptentive/android/sdk/R$id;->button_container:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    if-le p3, v2, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_3

    .line 71
    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 77
    :goto_2
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;

    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->showDismissButton()Z

    move-result p3

    .line 78
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/EnjoymentDialogInteraction;->getDismissText()Ljava/lang/String;

    move-result-object v1

    .line 79
    sget v2, Lcom/apptentive/android/sdk/R$id;->dismiss:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz p3, :cond_5

    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    :cond_4
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 86
    :cond_5
    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    const-string v1, "Exception in %s.onCreateView()"

    .line 88
    new-array p2, p2, [Ljava/lang/Object;

    const-class v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {p3, v1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->logException(Ljava/lang/Exception;)V

    :goto_3
    return-object p1
.end method

.method public onFragmentExit(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Z
    .locals 1

    const-string v0, "cancel"

    .line 96
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->exitTypeToDataJson(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/EnjoymentDialogFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
