.class public Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;
.super Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;
.source "NoteFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment<",
        "Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/ApptentiveBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;
    .locals 1

    .line 46
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 53
    sget p3, Lcom/apptentive/android/sdk/R$layout;->apptentive_textmodal_interaction_center:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    .line 56
    :try_start_0
    sget v1, Lcom/apptentive/android/sdk/R$id;->title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    if-nez v2, :cond_0

    .line 58
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    sget v1, Lcom/apptentive/android/sdk/R$id;->body:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getBody()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_1
    sget v1, Lcom/apptentive/android/sdk/R$id;->button_container:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 70
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->interaction:Lcom/apptentive/android/sdk/module/engagement/interaction/model/Interaction;

    check-cast v2, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;

    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/TextModalInteraction;->getActions()Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Actions;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 74
    invoke-virtual {v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Actions;->getAsList()Ljava/util/List;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_a

    .line 76
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 78
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    .line 79
    invoke-virtual {v5}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_2

    .line 81
    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, p3, :cond_5

    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 83
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    const/16 v2, 0x11

    if-le v3, v2, :cond_4

    goto :goto_3

    .line 85
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_7

    const/16 v2, 0xf

    if-le v3, v2, :cond_4

    goto :goto_3

    .line 87
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_8

    const/16 v2, 0xb

    if-le v3, v2, :cond_4

    :cond_8
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_9

    .line 93
    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_5

    .line 95
    :cond_9
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_5
    const/4 v2, 0x0

    .line 98
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 99
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;

    .line 101
    sget v5, Lcom/apptentive/android/sdk/R$layout;->apptentive_textmodal_interaction_button:I

    invoke-virtual {p1, v5, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 102
    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget-object v6, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$3;->$SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type:[I

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;->getType()Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;

    move-result-object v7

    invoke-virtual {v7}, Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_7

    .line 123
    :pswitch_0
    invoke-virtual {v5, p3}, Landroid/widget/Button;->setActivated(Z)V

    .line 124
    new-instance v6, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$2;

    invoke-direct {v6, p0, v3, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$2;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;I)V

    invoke-static {v6}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 105
    :pswitch_1
    new-instance v6, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;

    invoke-direct {v6, p0, v3, v2}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment$1;-><init>(Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;Lcom/apptentive/android/sdk/module/engagement/interaction/model/common/Action;I)V

    invoke-static {v6}, Lcom/apptentive/android/sdk/util/Util;->guarded(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    :goto_7
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 178
    :cond_a
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p1

    const-string v1, "Exception in %s.onCreateView()"

    .line 181
    new-array p3, p3, [Ljava/lang/Object;

    const-class v2, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    invoke-static {p1, v1, p3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->logException(Ljava/lang/Exception;)V

    :cond_b
    :goto_8
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFragmentExit(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Z
    .locals 1

    const-string v0, "cancel"

    .line 189
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->exitTypeToDataJson(Lcom/apptentive/android/sdk/ApptentiveViewExitType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/apptentive/android/sdk/module/engagement/interaction/fragment/NoteFragment;->engageInternal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
