.class Lcom/ebay/mobile/activities/SellingActivity$1;
.super Ljava/lang/Object;
.source "SellingActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/SellingActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/SellingActivity;

.field final synthetic val$cardLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/SellingActivity;Landroid/view/View;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/ebay/mobile/activities/SellingActivity$1;->this$0:Lcom/ebay/mobile/activities/SellingActivity;

    iput-object p2, p0, Lcom/ebay/mobile/activities/SellingActivity$1;->val$cardLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 148
    iget-object p1, p0, Lcom/ebay/mobile/activities/SellingActivity$1;->val$cardLayout:Landroid/view/View;

    const/high16 v0, -0x3f600000    # -5.0f

    mul-float p2, p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
