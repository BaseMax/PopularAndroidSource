.class public Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "LoadableIconAndTextViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field private accessibilityText:Ljava/lang/CharSequence;

.field private action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field public disabled:Z

.field private icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

.field private iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private final iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

.field private iconContentDescription:Ljava/lang/CharSequence;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private imageUrl:Ljava/lang/String;

.field public isPui:Z

.field public showIconAsBackground:Z

.field private text:Ljava/lang/CharSequence;

.field private textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private textAppearance:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private textAppearanceAttr:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public thisIsPPC:Z


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->showIconAsBackground:Z

    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 66
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->thisIsPPC:Z

    .line 59
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->isPui:Z

    .line 61
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->disabled:Z

    const p1, 0x7f0a14b3

    .line 67
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->id:I

    const-string p1, "LoadableIconAndText must not be null."

    .line 68
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 69
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 70
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->imageUrl:Ljava/lang/String;

    .line 71
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    .line 72
    iput p3, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearanceAttr:I

    .line 73
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz p1, :cond_1

    .line 75
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 78
    :cond_1
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz p1, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    :cond_2
    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;ILjava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    .line 86
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->thisIsPPC:Z

    .line 59
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->isPui:Z

    .line 61
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->disabled:Z

    const p1, 0x7f0a14b3

    .line 87
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->id:I

    const-string p1, "LoadableIconAndText must not be null."

    .line 88
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 89
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 90
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->imageUrl:Ljava/lang/String;

    .line 91
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    .line 92
    iput p3, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearanceAttr:I

    .line 93
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 97
    :cond_1
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    :cond_2
    const-string/jumbo p1, "payPalCreditDetails"

    .line 101
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 102
    iput-boolean p2, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->thisIsPPC:Z

    goto :goto_1

    :cond_3
    const-string/jumbo p1, "payUponInvoiceDetails"

    .line 103
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 104
    iput-boolean p2, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->isPui:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const v0, 0x7f0d063e

    .line 109
    invoke-direct {p0, v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    return-void
.end method

.method static synthetic lambda$onModelClick$0(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;Landroid/view/View;)V
    .locals 0

    .line 260
    invoke-interface {p0, p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;->onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    return-void
.end method

.method public static onModelClick(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;)V
    .locals 1
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxOnModelClick",
            "uxContent"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 259
    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 260
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$LoadableIconAndTextViewModel$BkI6LMAneZ-kQw0tA8TphMOzjUk;

    invoke-direct {v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$LoadableIconAndTextViewModel$BkI6LMAneZ-kQw0tA8TphMOzjUk;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public static setImage(Landroid/widget/ImageView;Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;)V
    .locals 3
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "android:src"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 229
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, p0, Lcom/ebay/android/widget/RemoteImageView;

    if-eqz v1, :cond_0

    .line 231
    move-object v0, p0

    check-cast v0, Lcom/ebay/android/widget/RemoteImageView;

    .line 232
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 237
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 244
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/CharSequence;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->accessibilityText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextAppearance()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 204
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearance:I

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    invoke-static {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/StyledTextThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    invoke-static {v0, v1}, Lcom/ebay/mobile/payments/experience/PaymentsExperienceUtil;->getText(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->text:Ljava/lang/CharSequence;

    .line 125
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->accessibilityText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->text:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->accessibilityText:Ljava/lang/CharSequence;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getIconType()Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/payments/experience/PaymentsIconHelper;->getIcon(Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, v0, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getAccessibilityText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconContentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getIconName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->icon:Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/type/base/Icon;->getIconName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconContentDescription:Ljava/lang/CharSequence;

    goto :goto_1

    .line 148
    :cond_3
    iget-boolean v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->showIconAsBackground:Z

    if-eqz v0, :cond_4

    .line 150
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_4
    :goto_1
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearanceAttr:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->base:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;

    if-eqz v0, :cond_5

    .line 157
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel$1;->$SwitchMap$com$ebay$nautilus$domain$data$experience$checkout$v2$common$RenderingHintType:[I

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->base:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v0, 0x7f04043a

    .line 166
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearanceAttr:I

    goto :goto_2

    :pswitch_1
    const v0, 0x7f040435

    .line 163
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearanceAttr:I

    goto :goto_2

    :pswitch_2
    const v0, 0x7f040434

    .line 160
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearanceAttr:I

    .line 170
    :cond_5
    :goto_2
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearanceAttr:I

    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->textAppearance:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
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

.method public setDisabled(Z)V
    .locals 0

    .line 270
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->disabled:Z

    return-void
.end method
