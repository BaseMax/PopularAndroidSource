.class public Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;
.super Landroid/widget/RelativeLayout;
.source "ApptentiveMessageCenterBadge.java"


# static fields
.field public static final SIZE_MINI:I = 0x1

.field public static final SIZE_NORMAL:I


# instance fields
.field private bUpdateLocked:Z

.field private badgeSize:I

.field private badgeTextColor:I

.field private inflater:Landroid/view/LayoutInflater;

.field private iv:Landroid/widget/ImageView;

.field private tv:Landroid/widget/TextView;

.field private unreadMessagesListener:Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;

.field private unreadMsgCounter:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 140
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 141
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->inflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, p1, v0, v1}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 153
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->inflater:Landroid/view/LayoutInflater;

    .line 155
    sget v0, Lcom/apptentive/android/sdk/R$attr;->apptentiveMessageCenterBadgeStyle:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->inflater:Landroid/view/LayoutInflater;

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private updateBadgeCounter()V
    .locals 2

    .line 225
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->bUpdateLocked:Z

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->tv:Landroid/widget/TextView;

    iget v1, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unreadMsgCounter:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->invalidate()V

    :cond_0
    return-void
.end method

.method private updateEntireBadge()V
    .locals 3

    .line 212
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->bUpdateLocked:Z

    if-nez v0, :cond_1

    .line 213
    iget v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeSize:I

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/apptentive/android/sdk/R$dimen;->apptentive_message_center_badge_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/apptentive/android/sdk/R$dimen;->apptentive_message_center_badge_mini:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 219
    :goto_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->tv:Landroid/widget/TextView;

    iget v1, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    invoke-direct {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->updateBadgeCounter()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getCounter()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unreadMsgCounter:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeSize:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeTextColor:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/apptentive/android/sdk/R$layout;->apptentive_widget_message_center_badge:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 160
    sget v1, Lcom/apptentive/android/sdk/R$id;->message_center_badge_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->iv:Landroid/widget/ImageView;

    .line 161
    sget v1, Lcom/apptentive/android/sdk/R$id;->message_center_badge_counter:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->tv:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 163
    iput v1, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeSize:I

    const/high16 v2, -0x1000000

    .line 164
    iput v2, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeTextColor:I

    .line 166
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->isApptentiveRegistered()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 p1, 0x8

    .line 167
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 170
    :cond_0
    invoke-static {}, Lcom/apptentive/android/sdk/Apptentive;->getUnreadMessageCount()I

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unreadMsgCounter:I

    .line 172
    new-instance v0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge$1;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge$1;-><init>(Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unreadMessagesListener:Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;

    .line 182
    iget-object v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unreadMessagesListener:Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;

    invoke-static {v0}, Lcom/apptentive/android/sdk/Apptentive;->addUnreadMessagesListener(Lcom/apptentive/android/sdk/module/messagecenter/UnreadMessagesListener;)V

    if-nez p2, :cond_1

    return-void

    .line 190
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 195
    :cond_2
    sget-object v0, Lcom/apptentive/android/sdk/R$styleable;->ApptentiveMessageCenterBadge:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    .line 201
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->lockUpdate()V

    .line 202
    sget p2, Lcom/apptentive/android/sdk/R$styleable;->ApptentiveMessageCenterBadge_apptentive_badgeSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->setSize(I)V

    .line 203
    sget p2, Lcom/apptentive/android/sdk/R$styleable;->ApptentiveMessageCenterBadge_apptentive_counterColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unlockUpdate()V

    .line 206
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    invoke-direct {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->updateEntireBadge()V

    return-void

    :catchall_0
    move-exception p2

    .line 205
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unlockUpdate()V

    .line 206
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public lockUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->bUpdateLocked:Z

    return-void
.end method

.method public setCounter(I)V
    .locals 1

    .line 121
    iget v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unreadMsgCounter:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    iput p1, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->unreadMsgCounter:I

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->updateBadgeCounter()V

    :cond_1
    return-void
.end method

.method public setSize(I)V
    .locals 1

    .line 69
    iget v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeSize:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    iput p1, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeSize:I

    if-eqz v0, :cond_1

    .line 74
    invoke-direct {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->updateEntireBadge()V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 95
    iget v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeTextColor:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    iput p1, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->badgeTextColor:I

    if-eqz v0, :cond_1

    .line 101
    invoke-direct {p0}, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->updateEntireBadge()V

    :cond_1
    return-void
.end method

.method public unlockUpdate()V
    .locals 1

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/widget/ApptentiveMessageCenterBadge;->bUpdateLocked:Z

    return-void
.end method
