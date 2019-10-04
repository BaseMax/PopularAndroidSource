.class Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "ConsentBannerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConsentBottomSheetDialog"
.end annotation


# instance fields
.field private final isLandscape:Z

.field private final maxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZI)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 231
    iput-boolean p3, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;->isLandscape:Z

    .line 232
    iput p4, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;->maxWidth:I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 238
    invoke-super {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->onCreate(Landroid/os/Bundle;)V

    .line 241
    iget-boolean p1, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;->isLandscape:Z

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 246
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;->maxWidth:I

    if-le p1, v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/ebay/mobile/ads/gdpr/ConsentBannerFragment$ConsentBottomSheetDialog;->maxWidth:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method
