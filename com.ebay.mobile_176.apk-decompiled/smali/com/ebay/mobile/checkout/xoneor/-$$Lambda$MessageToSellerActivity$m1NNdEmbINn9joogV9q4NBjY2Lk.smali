.class public final synthetic Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$MessageToSellerActivity$m1NNdEmbINn9joogV9q4NBjY2Lk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$MessageToSellerActivity$m1NNdEmbINn9joogV9q4NBjY2Lk;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$MessageToSellerActivity$m1NNdEmbINn9joogV9q4NBjY2Lk;->f$1:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$MessageToSellerActivity$m1NNdEmbINn9joogV9q4NBjY2Lk;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$MessageToSellerActivity$m1NNdEmbINn9joogV9q4NBjY2Lk;->f$1:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/ebay/mobile/checkout/xoneor/MessageToSellerActivity;->lambda$setInitialToolbarFocusForAccessibility$0(Landroid/view/View;Landroid/widget/EditText;)V

    return-void
.end method
