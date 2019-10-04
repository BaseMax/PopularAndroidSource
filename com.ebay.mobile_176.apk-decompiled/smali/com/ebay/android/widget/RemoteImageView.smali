.class public Lcom/ebay/android/widget/RemoteImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "RemoteImageView.java"

# interfaces
.implements Lcom/ebay/android/widget/ImageViewLoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;,
        Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;
    }
.end annotation


# instance fields
.field private averageBackgroundColor:Z

.field protected backgroundColor:I

.field private borderDrawable:Landroid/graphics/drawable/GradientDrawable;

.field protected circularImage:Z

.field private final dynamicHeight:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

.field protected final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected emptyLoadingColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private fadeInAnimation:Landroid/view/animation/Animation;

.field protected heightPixels:I

.field loader:Lcom/ebay/android/widget/ImageViewLoader;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field protected final maxHeightPixels:I

.field protected final maxWidthPixels:I

.field protected missingImageDrawable:Landroid/graphics/drawable/Drawable;

.field private onImageLoadedListener:Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;

.field protected use565Decode:Z

.field protected final viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

.field protected widthPixels:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, v0}, Lcom/ebay/android/widget/RemoteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/android/widget/RemoteImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 95
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    .line 54
    iput v0, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    .line 74
    new-instance v1, Lcom/ebay/android/widget/ViewVisibility;

    invoke-direct {v1, p0}, Lcom/ebay/android/widget/ViewVisibility;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/ebay/android/widget/RemoteImageView;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    .line 98
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->getFwActivityContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/app/FwActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/ebay/android/widget/RemoteImageView;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 101
    sget-object v1, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 103
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_maxWidthPixels:I

    const v1, 0x7fffffff

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/ebay/android/widget/RemoteImageView;->maxWidthPixels:I

    .line 104
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_maxHeightPixels:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/ebay/android/widget/RemoteImageView;->maxHeightPixels:I

    .line 106
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_fadeInDuration:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 107
    invoke-virtual {p0, p3}, Lcom/ebay/android/widget/RemoteImageView;->setFadeInAnimation(I)V

    .line 109
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_emptyLoadingColor:I

    sget v1, Lcom/ebay/nautilus/shell/R$color;->remoteimageview_default_empty:I

    .line 110
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 109
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/ebay/android/widget/RemoteImageView;->emptyLoadingColor:I

    .line 111
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_averageBackgroundColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/ebay/android/widget/RemoteImageView;->averageBackgroundColor:Z

    .line 112
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_backgroundColor:I

    const v1, 0x106000d

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/ebay/android/widget/RemoteImageView;->backgroundColor:I

    .line 113
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_circularImage:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/ebay/android/widget/RemoteImageView;->circularImage:Z

    .line 114
    invoke-static {}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->values()[Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    move-result-object p3

    sget v1, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_dynamicHeight:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    aget-object p3, p3, v1

    iput-object p3, p0, Lcom/ebay/android/widget/RemoteImageView;->dynamicHeight:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    .line 115
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_missingImage:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-nez p3, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/ebay/nautilus/shell/R$drawable;->ic_missing_image:I

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 117
    :cond_1
    invoke-static {p3, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 119
    :cond_2
    iput-object p3, p0, Lcom/ebay/android/widget/RemoteImageView;->missingImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 120
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_use565Decode:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    .line 122
    sget p3, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_imageBorderColor:I

    sget v1, Lcom/ebay/nautilus/shell/R$color;->image_border_color:I

    .line 123
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 122
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 124
    sget v1, Lcom/ebay/nautilus/shell/R$styleable;->RemoteImageView_imageBorderWidth:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-lez v0, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ebay/nautilus/shell/R$drawable;->image_border_overlay:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v1, v2, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->borderDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 131
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->borderDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_3

    .line 132
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->borderDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 135
    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final cancelAndClearLoader()V
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->cancel()V

    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    :cond_0
    return-void
.end method

.method private configureLoader(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)V
    .locals 10
    .param p1    # Lcom/ebay/nautilus/domain/data/image/LoadImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 613
    new-instance v8, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageView;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    const/4 v4, 0x0

    iget v5, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget v6, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    iget-boolean v7, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V

    iput-object v8, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    goto/16 :goto_0

    .line 618
    :cond_0
    sget-object v1, Lcom/ebay/android/widget/RemoteImageView$2;->$SwitchMap$com$ebay$nautilus$domain$data$image$ImageType:[I

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/data/image/LoadImageData;->getImageType()Lcom/ebay/nautilus/domain/data/image/ImageType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/image/ImageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 629
    :pswitch_0
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getNoSync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    .line 630
    sget-object v2, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->multiPassImageLoading:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {v1, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    new-instance v9, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    .line 633
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/android/widget/RemoteImageView;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-object v5, p1

    check-cast v5, Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v6, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget v7, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    iget-boolean v8, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/ebay/android/widget/RemoteImageViewMultiPassLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Landroid/content/Context;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V

    iput-object v9, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    goto :goto_0

    .line 636
    :cond_1
    new-instance v8, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageView;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-object v4, p1

    check-cast v4, Lcom/ebay/nautilus/domain/data/image/ImageData;

    iget v5, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget v6, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    iget-boolean v7, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ebay/android/widget/RemoteImageViewDirectLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/ImageData;IIZ)V

    iput-object v8, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    goto :goto_0

    .line 625
    :pswitch_1
    new-instance v8, Lcom/ebay/android/widget/GalleryImageViewLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageView;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-object v4, p1

    check-cast v4, Lcom/ebay/nautilus/domain/data/image/GalleryImageData;

    iget v5, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget v6, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    iget-boolean v7, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ebay/android/widget/GalleryImageViewLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/GalleryImageData;IIZ)V

    iput-object v8, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    return-void

    .line 621
    :pswitch_2
    new-instance v8, Lcom/ebay/android/widget/CompositeImageViewLoader;

    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->viewVisibility:Lcom/ebay/android/widget/ViewVisibility;

    iget-object v3, p0, Lcom/ebay/android/widget/RemoteImageView;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-object v4, p1

    check-cast v4, Lcom/ebay/nautilus/domain/data/image/CompositeImageData;

    iget v5, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget v6, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    iget-boolean v7, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/ebay/android/widget/CompositeImageViewLoader;-><init>(Lcom/ebay/android/widget/ImageViewLoaderCallbacks;Lcom/ebay/android/widget/ViewVisibility;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/image/CompositeImageData;IIZ)V

    iput-object v8, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    return-void

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultBackgroundColor()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 661
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageView;->averageBackgroundColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/ebay/android/widget/RemoteImageView;->emptyLoadingColor:I

    :goto_0
    return v0
.end method

.method private getFwActivityContext()Landroid/content/Context;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/content/Context;",
            ":",
            "Lcom/ebay/nautilus/shell/app/FwActivity;",
            ">()TF;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 143
    instance-of v1, v0, Lcom/ebay/nautilus/shell/app/FwActivity;

    if-nez v1, :cond_1

    .line 145
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    .line 146
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private notifyListener()V
    .locals 3

    .line 682
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v0

    .line 683
    :goto_0
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v2}, Lcom/ebay/android/widget/ImageViewLoader;->getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    .line 684
    :cond_2
    invoke-interface {v2}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getFinalUrl()Ljava/lang/String;

    move-result-object v1

    .line 685
    :goto_2
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->onImageLoadedListener:Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 686
    iget-object v2, p0, Lcom/ebay/android/widget/RemoteImageView;->onImageLoadedListener:Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;

    check-cast v0, Lcom/ebay/nautilus/domain/data/image/ImageData;

    invoke-interface {v2, p0, v1, v0}, Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;->onRemoteImageLoaded(Lcom/ebay/android/widget/RemoteImageView;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    :cond_3
    return-void
.end method

.method private resetAnimation()V
    .locals 3

    .line 672
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 675
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 676
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_0
    return-void
.end method

.method private resetBackground()V
    .locals 1

    .line 666
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->getDefaultBackgroundColor()I

    move-result v0

    .line 667
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object v0

    .line 255
    :goto_0
    instance-of v2, v0, Lcom/ebay/nautilus/domain/data/image/ImageData;

    if-eqz v2, :cond_1

    .line 256
    check-cast v0, Lcom/ebay/nautilus/domain/data/image/ImageData;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public getImageInfo()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->isFailed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->getImageInfoIfDone()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public isCircularImage()Z
    .locals 1

    .line 699
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageView;->circularImage:Z

    return v0
.end method

.method public isUse565Decode()Z
    .locals 1

    .line 714
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 557
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 558
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {v0}, Lcom/ebay/android/widget/ImageViewLoader;->reset()V

    .line 561
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->resetUi()V

    :cond_0
    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/RemoteImageView;->setOnRemoteImageLoadedListener(Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 601
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 603
    iget-boolean v0, p0, Lcom/ebay/android/widget/RemoteImageView;->circularImage:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->borderDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->borderDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 606
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->borderDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onFailure(Lcom/ebay/android/widget/ImageViewLoader;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eq v0, p1, :cond_0

    return-void

    .line 449
    :cond_0
    iget p1, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    if-lez p1, :cond_1

    iget p1, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    if-lez p1, :cond_1

    .line 451
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->missingImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    .line 452
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->notifyListener()V

    goto :goto_0

    .line 456
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->resetUi()V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 325
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatImageView;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    sub-int/2addr p4, p2

    .line 329
    iget p1, p0, Lcom/ebay/android/widget/RemoteImageView;->maxWidthPixels:I

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    sub-int/2addr p5, p3

    .line 330
    iget p1, p0, Lcom/ebay/android/widget/RemoteImageView;->maxHeightPixels:I

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    .line 338
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    iget p2, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget p3, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    invoke-interface {p1, p2, p3}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->getImageData()Lcom/ebay/nautilus/domain/data/image/LoadImageData;

    move-result-object p1

    .line 341
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->cancelAndClearLoader()V

    .line 342
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->configureLoader(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)V

    .line 343
    new-instance p1, Lcom/ebay/android/widget/RemoteImageView$1;

    invoke-direct {p1, p0}, Lcom/ebay/android/widget/RemoteImageView$1;-><init>(Lcom/ebay/android/widget/RemoteImageView;)V

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 359
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    .line 361
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->dynamicHeight:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->dynamicHeight:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    sget-object p2, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->DISABLED:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->dynamicHeight:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    sget-object p2, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->SQUARE:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 365
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getMeasuredWidth()I

    move-result p1

    .line 366
    invoke-virtual {p0, p1, p1}, Lcom/ebay/android/widget/RemoteImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 368
    :cond_1
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->dynamicHeight:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    sget-object p2, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->FOUR_BY_THREE:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getMeasuredWidth()I

    move-result p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 371
    invoke-virtual {p0, p1, p2}, Lcom/ebay/android/widget/RemoteImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 373
    :cond_2
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->dynamicHeight:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    sget-object p2, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->ADJUST_WIDTH:Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;

    invoke-virtual {p1, p2}, Lcom/ebay/android/widget/RemoteImageView$DynamicHeight;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 384
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getImageInfo()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getImageInfo()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 386
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getImageInfo()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 387
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getImageInfo()Lcom/ebay/nautilus/domain/data/image/LoadImageResult;

    move-result-object p2

    invoke-interface {p2}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    .line 389
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    .line 391
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getMaxWidth()I

    move-result v1

    div-float/2addr p2, p1

    mul-float v0, v0, p2

    float-to-int p1, v0

    if-le p1, v1, :cond_3

    move p1, v1

    .line 400
    :cond_3
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/ebay/android/widget/RemoteImageView;->setMeasuredDimension(II)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public onSuccess(Lcom/ebay/android/widget/ImageViewLoader;Lcom/ebay/nautilus/domain/data/image/LoadImageResult;)V
    .locals 1
    .param p2    # Lcom/ebay/nautilus/domain/data/image/LoadImageResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 415
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eq v0, p1, :cond_0

    return-void

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 419
    instance-of p1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 421
    :goto_0
    invoke-interface {p2}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/RemoteImageView;->setImageBitmapInternal(Landroid/graphics/Bitmap;)V

    .line 423
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/ebay/nautilus/domain/data/image/LoadImageResult;->isFromCache()Z

    move-result p2

    if-nez p2, :cond_2

    if-nez p1, :cond_2

    .line 424
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 426
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setAlpha(F)V

    .line 428
    :goto_1
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->notifyListener()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 569
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 589
    :cond_0
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz p1, :cond_3

    .line 591
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->reset()V

    .line 592
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->resetUi()V

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 578
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->missingImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x33000000

    .line 579
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz p1, :cond_3

    .line 584
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected final resetUi()V
    .locals 1

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/RemoteImageView;->setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    .line 654
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->resetBackground()V

    .line 655
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->resetAnimation()V

    return-void
.end method

.method public setAverageBackgroundColor(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lcom/ebay/android/widget/RemoteImageView;->averageBackgroundColor:Z

    return-void
.end method

.method public setCircularImage(Z)V
    .locals 0

    .line 704
    iput-boolean p1, p0, Lcom/ebay/android/widget/RemoteImageView;->circularImage:Z

    return-void
.end method

.method public setCompositeImageData(Lcom/ebay/nautilus/domain/data/image/CompositeImageData;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/image/CompositeImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    .line 216
    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    iget v1, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget v2, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    .line 217
    invoke-interface {v0, v1, v2}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    iget-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    .line 218
    invoke-interface {v0, v1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDecode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->cancelAndClearLoader()V

    .line 222
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->resetUi()V

    .line 223
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->configureLoader(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)V

    .line 224
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    return-void
.end method

.method public setEmptyLoadingColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 309
    iput p1, p0, Lcom/ebay/android/widget/RemoteImageView;->emptyLoadingColor:I

    return-void
.end method

.method public setFadeInAnimation(I)V
    .locals 3

    if-lez p1, :cond_0

    .line 296
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    .line 297
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 300
    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->fadeInAnimation:Landroid/view/animation/Animation;

    :goto_0
    return-void
.end method

.method public setGalleryImageData(Lcom/ebay/nautilus/domain/data/image/GalleryImageData;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/image/GalleryImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 234
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    .line 235
    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    iget v1, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget v2, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    .line 236
    invoke-interface {v0, v1, v2}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    iget-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    .line 237
    invoke-interface {v0, v1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDecode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->cancelAndClearLoader()V

    .line 241
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->resetUi()V

    .line 242
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->configureLoader(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)V

    .line 243
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 485
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    .line 486
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setImageBitmapInternal(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 507
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/image/ImageData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 196
    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    .line 197
    invoke-interface {v0, p1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForImageData(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    iget v1, p0, Lcom/ebay/android/widget/RemoteImageView;->widthPixels:I

    iget v2, p0, Lcom/ebay/android/widget/RemoteImageView;->heightPixels:I

    .line 198
    invoke-interface {v0, v1, v2}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDimension(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    iget-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageView;->use565Decode:Z

    .line 199
    invoke-interface {v0, v1}, Lcom/ebay/android/widget/ImageViewLoader;->isAppropriateForDecode(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->cancelAndClearLoader()V

    .line 203
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->resetUi()V

    .line 204
    invoke-direct {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->configureLoader(Lcom/ebay/nautilus/domain/data/image/LoadImageData;)V

    .line 205
    iget-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->loader:Lcom/ebay/android/widget/ImageViewLoader;

    invoke-interface {p1}, Lcom/ebay/android/widget/ImageViewLoader;->dispatch()V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 498
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->cancelAndClearLoader()V

    .line 499
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 517
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->getDefaultBackgroundColor()I

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageView;->missingImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/android/widget/RemoteImageView;->missingImageDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 519
    :goto_0
    iget-boolean v4, p0, Lcom/ebay/android/widget/RemoteImageView;->averageBackgroundColor:Z

    .line 521
    instance-of v5, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_3

    .line 523
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 524
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v1, :cond_2

    .line 529
    iget-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageView;->averageBackgroundColor:Z

    if-eqz v1, :cond_1

    .line 530
    invoke-static {v0, v3}, Lcom/ebay/common/util/ImageUtil;->getAverageColor(Landroid/graphics/Bitmap;Z)I

    move-result v1

    goto :goto_1

    .line 531
    :cond_1
    iget-boolean v1, p0, Lcom/ebay/android/widget/RemoteImageView;->circularImage:Z

    if-nez v1, :cond_2

    .line 532
    iget v1, p0, Lcom/ebay/android/widget/RemoteImageView;->backgroundColor:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 539
    :goto_1
    iget-boolean v2, p0, Lcom/ebay/android/widget/RemoteImageView;->circularImage:Z

    if-eqz v2, :cond_4

    .line 541
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 542
    invoke-virtual {p1, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 543
    invoke-virtual {p1, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    const/16 v0, 0x11

    .line 544
    invoke-virtual {p1, v0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setGravity(I)V

    goto :goto_2

    :cond_3
    move v1, v0

    move v3, v4

    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 550
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundColor(I)V

    .line 551
    :cond_5
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setImageResource(I)V
    .locals 2

    .line 469
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 470
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 472
    :goto_0
    invoke-static {v1, p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 473
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/RemoteImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMissingImage(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 155
    invoke-direct {p0}, Lcom/ebay/android/widget/RemoteImageView;->getFwActivityContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/android/widget/RemoteImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->missingImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnRemoteImageLoadedListener(Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/ebay/android/widget/RemoteImageView;->onImageLoadedListener:Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;

    return-void
.end method

.method public setRemoteImageUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/ebay/android/widget/RemoteImageView;->setRemoteImageUrl(Ljava/lang/String;Lcom/ebay/nautilus/kernel/net/AplsServiceInfo;)V

    return-void
.end method

.method public setRemoteImageUrl(Ljava/lang/String;Lcom/ebay/nautilus/kernel/net/AplsServiceInfo;)V
    .locals 1

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/ebay/nautilus/domain/data/image/ImageData;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/domain/data/image/ImageData;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p2}, Lcom/ebay/nautilus/domain/data/image/ImageData;->setAplsServiceInfo(Lcom/ebay/nautilus/kernel/net/AplsServiceInfo;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/RemoteImageView;->setImageData(Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    return-void
.end method
