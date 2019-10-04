.class public Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field dateTextView:Landroid/widget/TextView;

.field detailsMessageView:Landroid/widget/TextView;

.field feedbackContentLayout:Landroid/widget/LinearLayout;

.field feedbackType:Landroid/widget/ImageView;

.field itemIdTextView:Landroid/widget/TextView;

.field progress:Landroid/view/View;

.field final synthetic this$1:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

.field titleTextView:Landroid/widget/TextView;

.field userTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->this$1:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
