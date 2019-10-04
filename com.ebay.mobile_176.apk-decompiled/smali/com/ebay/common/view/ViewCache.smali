.class public Lcom/ebay/common/view/ViewCache;
.super Ljava/lang/Object;
.source "ViewCache.java"


# instance fields
.field public final image:Lcom/ebay/android/widget/RemoteImageView;

.field public final imageItemShipped:Landroid/widget/ImageView;

.field public final imageLeaveFeedback:Landroid/widget/ImageView;

.field public final imageStampEnding:Landroid/widget/ImageView;

.field public final imageStampOutbid:Landroid/widget/ImageView;

.field public final imageStampPaid:Landroid/widget/ImageView;

.field public isCurrencyConversionPending:Z

.field public object:Ljava/lang/Object;

.field public final rightColumnText1:Landroid/widget/TextView;

.field public final rightColumnText2:Landroid/widget/TextView;

.field public final rightColumnText3:Landroid/widget/TextView;

.field public final rightColumnText4:Landroid/widget/TextView;

.field public final rightColumnText5:Landroid/widget/TextView;

.field public final rootCellLayout:Landroid/view/View;

.field public final rootView:Landroid/view/View;

.field public final specialText:Landroid/widget/TextView;

.field public final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->object:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/ebay/common/view/ViewCache;->rootView:Landroid/view/View;

    const v0, 0x7f0a0e0d

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->rootCellLayout:Landroid/view/View;

    const v0, 0x7f0a07c3

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ebay/android/widget/RemoteImageView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    const v0, 0x1020014

    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->text:Landroid/widget/TextView;

    const v0, 0x7f0a126f

    .line 42
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->rightColumnText1:Landroid/widget/TextView;

    const v0, 0x7f0a1270

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->rightColumnText2:Landroid/widget/TextView;

    const v0, 0x7f0a1271

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->rightColumnText3:Landroid/widget/TextView;

    const v0, 0x7f0a1272

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->rightColumnText4:Landroid/widget/TextView;

    const v0, 0x7f0a1273

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->rightColumnText5:Landroid/widget/TextView;

    const v0, 0x7f0a116d

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->specialText:Landroid/widget/TextView;

    const v0, 0x7f0a092b

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->imageLeaveFeedback:Landroid/widget/ImageView;

    const v0, 0x7f0a08d9

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->imageItemShipped:Landroid/widget/ImageView;

    const v0, 0x7f0a1198

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->imageStampPaid:Landroid/widget/ImageView;

    const v0, 0x7f0a1197

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ebay/common/view/ViewCache;->imageStampOutbid:Landroid/widget/ImageView;

    const v0, 0x7f0a1195

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ebay/common/view/ViewCache;->imageStampEnding:Landroid/widget/ImageView;

    return-void
.end method
