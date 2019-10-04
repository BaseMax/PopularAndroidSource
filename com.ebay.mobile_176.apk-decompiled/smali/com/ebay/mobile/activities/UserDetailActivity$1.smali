.class Lcom/ebay/mobile/activities/UserDetailActivity$1;
.super Ljava/lang/Object;
.source "UserDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/UserDetailActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/UserDetailActivity;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$1;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity$1;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/UserDetailActivity;->buttonLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 590
    iget-object v0, p0, Lcom/ebay/mobile/activities/UserDetailActivity$1;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object v0, v0, Lcom/ebay/mobile/activities/UserDetailActivity;->scrollViewSpacer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$1;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object v1, v1, Lcom/ebay/mobile/activities/UserDetailActivity;->buttonLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 592
    iget-object v1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$1;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    iget-object v1, v1, Lcom/ebay/mobile/activities/UserDetailActivity;->scrollViewSpacer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
