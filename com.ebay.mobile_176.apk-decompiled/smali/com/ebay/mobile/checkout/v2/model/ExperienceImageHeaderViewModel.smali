.class public Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;
.source "ExperienceImageHeaderViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field private action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

.field private iconDrawable:Landroid/graphics/drawable/Drawable;

.field private imageUrl:Ljava/lang/String;

.field public isWallet:Z

.field private textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field private textAppearanceAttr:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field private textAppearanceId:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 54
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz p2, :cond_2

    .line 57
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 58
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->imageUrl:Ljava/lang/String;

    .line 59
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 62
    :cond_1
    iget-object p1, p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 66
    :cond_2
    iput p3, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->textAppearanceAttr:I

    .line 67
    iput-boolean p4, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->isWallet:Z

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    const v0, 0x7f0d0638

    .line 73
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;IZ)V

    return-void
.end method

.method static synthetic lambda$onModelClick$0(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;Landroid/view/View;)V
    .locals 0

    .line 162
    invoke-interface {p0, p2, p1}, Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;->onItemClick(Landroid/view/View;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Z

    return-void
.end method

.method public static onModelClick(Landroid/view/ViewGroup;Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;)V
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

    .line 161
    invoke-virtual {p2}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$ExperienceImageHeaderViewModel$tPCuNCYmrMfJ9vY_aLNUNxudByE;

    invoke-direct {v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$ExperienceImageHeaderViewModel$tPCuNCYmrMfJ9vY_aLNUNxudByE;-><init>(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public static setImage(Landroid/widget/ImageView;Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;)V
    .locals 3
    .param p0    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "android:src"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v1, p0, Lcom/ebay/android/widget/RemoteImageView;

    if-eqz v1, :cond_1

    .line 138
    move-object v0, p0

    check-cast v0, Lcom/ebay/android/widget/RemoteImageView;

    .line 139
    invoke-virtual {p1}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->textAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAppearance()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->textAppearanceId:I

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-static {p1, v0}, Lcom/ebay/mobile/util/ExperienceUtil;->getText(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    iget v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->textAppearanceAttr:I

    invoke-static {p1, v0}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeResId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->textAppearanceId:I

    .line 83
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconAndText:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->icon:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;->getIconType()Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/payments/experience/PaymentsIconHelper;->getIcon(Lcom/ebay/nautilus/domain/data/experience/type/base/CommonIconType;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v1, v0, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ExperienceImageHeaderViewModel;->iconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
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
