.class public Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
.source "RatingDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;
    .locals 1

    .line 31
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;-><init>()V

    .line 32
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 38
    sget p3, Lcom/apptentive/android/sdk/R$layout;->apptentive_rating_dialog_interaction:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    .line 41
    :try_start_0
    iget-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast p3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;

    invoke-virtual {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getTitle()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 43
    sget v1, Lcom/apptentive/android/sdk/R$id;->title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    :cond_0
    sget p3, Lcom/apptentive/android/sdk/R$id;->body:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getBody(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget p3, Lcom/apptentive/android/sdk/R$id;->rate:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 53
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getRateText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p3, p2}, Landroid/widget/Button;->setActivated(Z)V

    .line 57
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;)V

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget p3, Lcom/apptentive/android/sdk/R$id;->remind:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 67
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getRemindText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_1
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$2;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;)V

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget p3, Lcom/apptentive/android/sdk/R$id;->decline:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 81
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v1, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/RatingDialogInteraction;->getDeclineText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_2
    new-instance v1, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment$3;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;)V

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v1, "Exception in %s.onCreateView()"

    .line 93
    new-array p2, p2, [Ljava/lang/Object;

    const-class v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v0

    invoke-static {p3, v1, p2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {p3}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->logException(Ljava/lang/Exception;)V

    :goto_0
    return-object p1
.end method

.method public onFragmentExit(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Z
    .locals 1

    const-string v0, "cancel"

    .line 101
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->exitTypeToDataJson(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
