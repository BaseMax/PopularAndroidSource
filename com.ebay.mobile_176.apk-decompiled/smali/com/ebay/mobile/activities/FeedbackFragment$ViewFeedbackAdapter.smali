.class public Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FeedbackFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/FeedbackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewFeedbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/ebay/nautilus/domain/data/trading/Feedback;",
        ">;"
    }
.end annotation


# instance fields
.field private final buyer:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final detailsMessage:Ljava/lang/String;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final itemNumber:Ljava/lang/String;

.field private lastPage:Z

.field private final linkMovementMethod:Landroid/text/method/LinkMovementMethod;

.field positionFor90DayLabel:I

.field private final seller:Ljava/lang/String;

.field final synthetic this$0:Lcom/ebay/mobile/activities/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/FeedbackFragment;Landroid/content/Context;)V
    .locals 2

    .line 289
    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    .line 290
    iget-object v0, p1, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    const v1, 0x7f0d0566

    invoke-direct {p0, p2, v1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 276
    new-instance v0, Landroid/text/method/LinkMovementMethod;

    invoke-direct {v0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->linkMovementMethod:Landroid/text/method/LinkMovementMethod;

    const/4 v0, -0x1

    .line 284
    iput v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    .line 291
    iput-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->context:Landroid/content/Context;

    .line 292
    iget-object p1, p1, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    invoke-virtual {p1}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->inflater:Landroid/view/LayoutInflater;

    const p1, 0x7f121032

    .line 293
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->seller:Ljava/lang/String;

    const p1, 0x7f121030

    .line 294
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->buyer:Ljava/lang/String;

    const p1, 0x7f12060d

    .line 295
    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->itemNumber:Ljava/lang/String;

    const/4 p1, 0x1

    .line 296
    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "90"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const v0, 0x7f1204cf

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->detailsMessage:Ljava/lang/String;

    .line 298
    invoke-direct {p0}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->resetHeaderPosition()V

    return-void
.end method

.method private getMore()V
    .locals 3

    .line 540
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget v1, v0, Lcom/ebay/mobile/activities/FeedbackFragment;->currentPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/ebay/mobile/activities/FeedbackFragment;->currentPage:I

    .line 541
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v0, v0, Lcom/ebay/mobile/activities/FeedbackFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v1, v1, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 542
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget v1, v1, Lcom/ebay/mobile/activities/FeedbackFragment;->currentPage:I

    iget-object v2, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget v2, v2, Lcom/ebay/mobile/activities/FeedbackFragment;->position:I

    invoke-virtual {v0, v1, v2}, Lcom/ebay/mobile/activities/FeedbackFragment;->issueDataRequest(II)V

    return-void
.end method

.method private resetHeaderPosition()V
    .locals 6

    .line 307
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v0, v0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v0, v0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 309
    iget v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    if-ltz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v0, v0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    iget v2, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 312
    :cond_0
    iput v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    .line 314
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, -0x5a

    .line 315
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 319
    iget-object v2, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v2, v2, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/trading/Feedback;

    .line 321
    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/trading/Feedback;->commentTime:Ljava/util/Date;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 322
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    iput v4, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    .line 325
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v0, v0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    new-instance v1, Lcom/ebay/nautilus/domain/data/trading/Feedback;

    invoke-direct {v1, v3}, Lcom/ebay/nautilus/domain/data/trading/Feedback;-><init>(Z)V

    invoke-interface {v0, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 332
    :cond_2
    iput v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    :cond_3
    :goto_1
    return-void
.end method

.method private setupFeedbackRow(ILcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;Lcom/ebay/nautilus/domain/data/trading/Feedback;)V
    .locals 8

    .line 384
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->feedbackType:Landroid/widget/ImageView;

    iget-boolean v1, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->loading:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-boolean v1, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->loading:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    iget-boolean v1, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->loading:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 387
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    iget-boolean v1, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->loading:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->progress:Landroid/view/View;

    iget-boolean v1, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->loading:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    const/16 v1, 0x8

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->itemIdTextView:Landroid/widget/TextView;

    iget-boolean v1, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->loading:Z

    if-eqz v1, :cond_5

    iget-wide v4, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->itemId:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    const/16 v1, 0x8

    .line 390
    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->detailsMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->feedbackContentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 396
    iget-boolean v0, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->loading:Z

    if-nez v0, :cond_a

    .line 399
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v1, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->feedbackType:Landroid/widget/ImageView;

    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->commentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ebay/mobile/activities/FeedbackFragment;->setupFeedbackType(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 402
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->commentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->commentingUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 407
    iget-object v0, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->commentingUser:Ljava/lang/String;

    .line 408
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v1, v1, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    const v2, 0x7f121031

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Seller"

    iget-object v6, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->role:Ljava/lang/String;

    .line 409
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->buyer:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iget-object v5, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->seller:Ljava/lang/String;

    :goto_6
    aput-object v5, v4, v3

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 408
    invoke-virtual {v1, v2, v4}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-lt v2, v4, :cond_7

    const-string v2, "***"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_7
    const-string v2, "Not available"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 425
    :cond_8
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 427
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_7

    .line 433
    :cond_9
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 435
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 436
    new-instance v1, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$1;

    invoke-direct {v1, p0, p3}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$1;-><init>(Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;Lcom/ebay/nautilus/domain/data/trading/Feedback;)V

    .line 444
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/16 v5, 0x21

    invoke-virtual {v4, v1, v2, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 446
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    iget-object v0, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->linkMovementMethod:Landroid/text/method/LinkMovementMethod;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 452
    :cond_a
    :goto_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->conditionallyAddItemLink(ILcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;Lcom/ebay/nautilus/domain/data/trading/Feedback;)V

    .line 455
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/ebay/mobile/util/Util;->isDayFirst(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/activities/FeedbackFragment;->getFeedbackDateFormat(Z)Ljava/lang/String;

    move-result-object v0

    .line 457
    iget-object p3, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->commentTime:Ljava/util/Date;

    invoke-static {v0, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 458
    iget-object p2, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupHeaderRow(Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;)V
    .locals 2

    .line 516
    iget-object v0, p1, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->detailsMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->detailsMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v0, p1, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->detailsMessageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    iget-object p1, p1, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->feedbackContentLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method conditionallyAddItemLink(ILcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;Lcom/ebay/nautilus/domain/data/trading/Feedback;)V
    .locals 8

    .line 464
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/app/Authentication;->user:Ljava/lang/String;

    .line 467
    :goto_0
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v1, v1, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    iget-object v1, v1, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->userId:Ljava/lang/String;

    .line 468
    iget-wide v2, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->itemId:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->transactionId:Ljava/lang/String;

    invoke-static {v2}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 470
    :goto_1
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->shouldAddItemLinkToFeedback(IZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 472
    iget-object p1, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->itemIdTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->itemNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <a href=\"#\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p3, Lcom/ebay/nautilus/domain/data/trading/Feedback;->itemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "</a>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object p1, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->itemIdTextView:Landroid/widget/TextView;

    invoke-static {p1, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 475
    iget-object p1, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->itemIdTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object p1, p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->itemIdTextView:Landroid/widget/TextView;

    new-instance p2, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$2;

    invoke-direct {p2, p0, p3}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$2;-><init>(Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;Lcom/ebay/nautilus/domain/data/trading/Feedback;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 344
    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->inflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0566

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 346
    new-instance p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;-><init>(Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;)V

    const v0, 0x7f0a0652

    .line 347
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->feedbackContentLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0659

    .line 348
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->feedbackType:Landroid/widget/ImageView;

    const v0, 0x7f0a131d

    .line 349
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->titleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a13a1

    .line 350
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->userTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0504

    .line 351
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->dateTextView:Landroid/widget/TextView;

    const v0, 0x7f0a0cbc

    .line 352
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->progress:Landroid/view/View;

    const v0, 0x7f0a088c

    .line 353
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->itemIdTextView:Landroid/widget/TextView;

    const v0, 0x7f0a1286

    .line 354
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;->detailsMessageView:Landroid/widget/TextView;

    .line 355
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;

    .line 363
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object v0, v0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/trading/Feedback;

    .line 366
    iget-boolean v1, v0, Lcom/ebay/nautilus/domain/data/trading/Feedback;->loading:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    if-ne p1, v1, :cond_1

    .line 368
    invoke-direct {p0, p3}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->setupHeaderRow(Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;)V

    goto :goto_1

    .line 372
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->setupFeedbackRow(ILcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter$ViewHolder;Lcom/ebay/nautilus/domain/data/trading/Feedback;)V

    .line 375
    :goto_1
    iget-object p3, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-object p3, p3, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget-boolean p1, p1, Lcom/ebay/mobile/activities/FeedbackFragment;->requestOutstanding:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget p1, p1, Lcom/ebay/mobile/activities/FeedbackFragment;->currentPage:I

    iget-object p3, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    iget p3, p3, Lcom/ebay/mobile/activities/FeedbackFragment;->totalPages:I

    if-ge p1, p3, :cond_2

    iget-boolean p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->lastPage:Z

    if-nez p1, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->getMore()V

    :cond_2
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 548
    invoke-direct {p0}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->resetHeaderPosition()V

    .line 549
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setLastPage(Z)V
    .locals 0

    .line 523
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->lastPage:Z

    return-void
.end method

.method shouldAddItemLinkToFeedback(IZLjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 502
    iget v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 505
    :goto_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->this$0:Lcom/ebay/mobile/activities/FeedbackFragment;

    .line 506
    invoke-virtual {v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getFeedbackType()Lcom/ebay/nautilus/domain/data/trading/FeedbackType;

    move-result-object v0

    sget-object v3, Lcom/ebay/nautilus/domain/data/trading/FeedbackType;->RECEIVED_AS_SELLER:Lcom/ebay/nautilus/domain/data/trading/FeedbackType;

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 509
    :goto_2
    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method
