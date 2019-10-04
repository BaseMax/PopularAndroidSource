.class Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$2;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->conditionallyAddItemLink(ILcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;Lcom/ebay/nautilus/domain/data/trading/Feedback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

.field final synthetic val$feedback:Lcom/ebay/nautilus/domain/data/trading/Feedback;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;Lcom/ebay/nautilus/domain/data/trading/Feedback;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$2;->this$1:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    iput-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$2;->val$feedback:Lcom/ebay/nautilus/domain/data/trading/Feedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 481
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$2;->this$1:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    iget-object p1, p1, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$2;->val$feedback:Lcom/ebay/nautilus/domain/data/trading/Feedback;

    invoke-virtual {p1, v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->showItem(Lcom/ebay/nautilus/domain/data/trading/Feedback;)V

    return-void
.end method
