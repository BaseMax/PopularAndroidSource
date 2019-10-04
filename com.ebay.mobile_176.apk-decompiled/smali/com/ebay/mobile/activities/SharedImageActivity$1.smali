.class Lcom/ebay/mobile/activities/SharedImageActivity$1;
.super Ljava/lang/Object;
.source "SharedImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/SharedImageActivity;->initSearchConfirmationUi(Lcom/ebay/nautilus/domain/data/Photo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/SharedImageActivity;

.field final synthetic val$photo:Lcom/ebay/nautilus/domain/data/Photo;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/SharedImageActivity;Lcom/ebay/nautilus/domain/data/Photo;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/ebay/mobile/activities/SharedImageActivity$1;->this$0:Lcom/ebay/mobile/activities/SharedImageActivity;

    iput-object p2, p0, Lcom/ebay/mobile/activities/SharedImageActivity$1;->val$photo:Lcom/ebay/nautilus/domain/data/Photo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/ebay/mobile/activities/SharedImageActivity$1;->this$0:Lcom/ebay/mobile/activities/SharedImageActivity;

    iget-object v0, p0, Lcom/ebay/mobile/activities/SharedImageActivity$1;->val$photo:Lcom/ebay/nautilus/domain/data/Photo;

    invoke-static {p1, v0}, Lcom/ebay/mobile/activities/SharedImageActivity;->access$000(Lcom/ebay/mobile/activities/SharedImageActivity;Lcom/ebay/nautilus/domain/data/Photo;)V

    .line 95
    iget-object p1, p0, Lcom/ebay/mobile/activities/SharedImageActivity$1;->this$0:Lcom/ebay/mobile/activities/SharedImageActivity;

    invoke-static {p1}, Lcom/ebay/mobile/activities/SharedImageActivity;->access$100(Lcom/ebay/mobile/activities/SharedImageActivity;)V

    return-void
.end method
