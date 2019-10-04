.class Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;
.super Ljava/lang/Object;
.source "ApptentiveImageGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->setupLayoutListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;

.field final synthetic val$desiredNumCount:I


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;I)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;

    iput p2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->val$desiredNumCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getWidth()I

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/apptentive/android/sdk/R$dimen;->apptentive_image_grid_space_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 84
    iget v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->val$desiredNumCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->val$desiredNumCount:I

    div-int/2addr v0, v1

    .line 85
    iget-object v1, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->access$000(Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;)Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v3, v1

    int-to-float v1, v0

    mul-float v3, v3, v1

    float-to-int v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/apptentive/android/sdk/util/image/ImageGridViewAdapter;->setItemSize(II)V

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView$1;->this$0:Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/util/image/ApptentiveImageGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
