.class Lcom/ebay/mobile/activities/ModalActivity$1;
.super Ljava/lang/Object;
.source "ModalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/ModalActivity;->setContentView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/ModalActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/ModalActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/ebay/mobile/activities/ModalActivity$1;->this$0:Lcom/ebay/mobile/activities/ModalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/ebay/mobile/activities/ModalActivity$1;->this$0:Lcom/ebay/mobile/activities/ModalActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ModalActivity;->finish()V

    return-void
.end method
