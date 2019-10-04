.class public Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;
.super Landroid/widget/GridView;
.source "ApptentiveImageGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener;
    }
.end annotation


# instance fields
.field private imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

.field private listener:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;)Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    return-object p0
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-virtual {p1, p3}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->clickOn(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->listener:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener;

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->listener:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener;

    iget-object p2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-virtual {p2, p3}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->getItem(I)Lcom/apptentive/android/sdk/util/image/ImageItem;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener;->onClick(ILcom/apptentive/android/sdk/util/image/ImageItem;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const p2, 0x1fffffff

    const/high16 v0, -0x80000000

    .line 45
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 51
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void
.end method

.method public setAdapterIndicator(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showImageIndicator(Z)V

    .line 107
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->setImageIndicator(I)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->showImageIndicator(Z)V

    :goto_0
    return-void
.end method

.method public setAdapterItemSize(II)V
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/apptentive/android/sdk/R$dimen;->apptentive_image_grid_space_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    mul-int v0, v0, v1

    sub-int/2addr p1, v0

    .line 99
    div-int/2addr p1, p2

    .line 100
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/apptentive/android/sdk/util/Util;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    .line 101
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr v1, p2

    int-to-float p2, p1

    mul-float v1, v1, p2

    float-to-int p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->setItemSize(II)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/apptentive/android/sdk/util/image/ImageItem;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->setData(Ljava/util/List;)V

    return-void
.end method

.method public setImageIndicatorCallback(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->setIndicatorCallback(Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter$Callback;)V

    return-void
.end method

.method public setListener(Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->listener:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$ImageItemClickedListener;

    return-void
.end method

.method public setupLayoutListener()V
    .locals 3

    .line 75
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/apptentive/android/sdk/R$integer;->apptentive_image_grid_default_column_number:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;

    invoke-direct {v2, p0, v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;-><init>(Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setupUi()V
    .locals 4

    .line 65
    invoke-static {}, Lcom/apptentive/android/sdk/ApptentiveInternal;->getInstance()Lcom/apptentive/android/sdk/ApptentiveInstance;

    move-result-object v0

    invoke-interface {v0}, Lcom/apptentive/android/sdk/ApptentiveInstance;->getConversationProxy()Lcom/apptentive/android/sdk/conversation/ConversationProxy;

    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/Assert;->assertNotNull(Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/conversation/ConversationProxy;->getConversationToken()Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    .line 70
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->imageBandAdapter:Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
