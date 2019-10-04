.class public Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "NotificationViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field public background:Landroid/graphics/drawable/Drawable;

.field private final displayIcon:Z

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public message:Ljava/lang/CharSequence;

.field public messageContentDescription:Ljava/lang/CharSequence;

.field private notificationAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private final notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

.field public title:Ljava/lang/CharSequence;

.field public titleContentDescription:Ljava/lang/CharSequence;

.field public titleTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;Z)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0d0640

    .line 53
    invoke-direct {p0, v0}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const v0, 0x7f0a14b5

    .line 54
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->id:I

    const-string v0, "Notification must not be null."

    .line 55
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    .line 56
    iput-boolean p2, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->displayIcon:Z

    .line 60
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->messages:Ljava/util/List;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 63
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->messages:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 65
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_1

    .line 67
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_0

    .line 72
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$onModelClick$0(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;Landroid/view/View;)V
    .locals 0

    .line 189
    invoke-interface {p0, p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;->onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    return-void
.end method

.method public static onModelClick(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;)V
    .locals 1
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxOnModelClick",
            "uxContent"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 185
    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->hasAction()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 189
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$NotificationViewModel$E9Ew79ZXOCL__Um59rwf-wizyEA;

    invoke-direct {v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$NotificationViewModel$E9Ew79ZXOCL__Um59rwf-wizyEA;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 90
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    if-eqz v0, :cond_c

    .line 93
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->getMessageType()Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    move-result-object v1

    const v2, 0x7f08037f

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 97
    sget-object v1, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$type$field$MessageType:[I

    iget-object v4, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->getMessageType()Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/experience/type/field/MessageType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 111
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->displayIcon:Z

    if-eqz v1, :cond_2

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 105
    :pswitch_0
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->displayIcon:Z

    if-eqz v1, :cond_0

    const v1, 0x7f080380

    .line 106
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    iput-object v3, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-interface {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;->getSecondaryColor()I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->titleTextColor:I

    goto :goto_1

    .line 101
    :pswitch_1
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->displayIcon:Z

    if-eqz v1, :cond_1

    const v1, 0x7f08037e

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_1
    iput-object v3, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-interface {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;->getEmphasisColor()I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->titleTextColor:I

    goto :goto_1

    .line 111
    :cond_2
    :goto_0
    iput-object v3, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-interface {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;->getHighlightColor()I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->titleTextColor:I

    goto :goto_1

    .line 118
    :cond_3
    iget-boolean v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->displayIcon:Z

    if-eqz v1, :cond_4

    invoke-static {p1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_4
    iput-object v3, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->drawable:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-interface {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;->getHighlightColor()I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->titleTextColor:I

    .line 122
    :goto_1
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->getTitle()Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 125
    invoke-static {v0, p1}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->title:Ljava/lang/CharSequence;

    .line 129
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 130
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/Util;->stripWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/mobile/util/Util;->compatFromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->title:Ljava/lang/CharSequence;

    .line 132
    :cond_5
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 133
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    goto :goto_2

    .line 134
    :cond_6
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->titleContentDescription:Ljava/lang/CharSequence;

    .line 137
    :cond_7
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->messages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/ebay/mobile/payments/experience/PaymentsExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->message:Ljava/lang/CharSequence;

    .line 138
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->messages:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->notificationInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/Notification;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 143
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-nez v2, :cond_8

    goto :goto_3

    .line 146
    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "\n"

    .line 147
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_9
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    .line 150
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    goto :goto_4

    :cond_a
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    .line 151
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object v1

    .line 150
    :goto_4
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 153
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/NotificationViewModel;->messageContentDescription:Ljava/lang/CharSequence;

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic onBind(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem$-CC;->$default$onBind(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    return-void
.end method
