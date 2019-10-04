.class Lcom/ebay/mobile/activities/ModalActivity$2;
.super Ljava/lang/Object;
.source "ModalActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/ModalActivity;->onPostCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/ModalActivity;

.field final synthetic val$modalMain:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/ModalActivity;Landroid/view/View;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/ebay/mobile/activities/ModalActivity$2;->this$0:Lcom/ebay/mobile/activities/ModalActivity;

    iput-object p2, p0, Lcom/ebay/mobile/activities/ModalActivity$2;->val$modalMain:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity$2;->val$modalMain:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 105
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity$2;->this$0:Lcom/ebay/mobile/activities/ModalActivity;

    iget-object v1, p0, Lcom/ebay/mobile/activities/ModalActivity$2;->val$modalMain:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ebay/mobile/activities/ModalActivity;->access$002(Lcom/ebay/mobile/activities/ModalActivity;I)I

    .line 106
    iget-object v0, p0, Lcom/ebay/mobile/activities/ModalActivity$2;->this$0:Lcom/ebay/mobile/activities/ModalActivity;

    iget-object v1, p0, Lcom/ebay/mobile/activities/ModalActivity$2;->val$modalMain:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ebay/mobile/activities/ModalActivity;->access$102(Lcom/ebay/mobile/activities/ModalActivity;I)I

    return-void
.end method
