.class public Lcom/ebay/mobile/activities/FeedbackFragment;
.super Lcom/ebay/mobile/activities/BaseFragment;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;,
        Lcom/ebay/mobile/activities/FeedbackFragment$SpinnerAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field allFeedbackString:Ljava/lang/String;

.field protected currentPage:I

.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/trading/Feedback;",
            ">;"
        }
    .end annotation
.end field

.field protected listView:Landroid/widget/ListView;

.field negativeString:Ljava/lang/String;

.field neutralString:Ljava/lang/String;

.field private noItems:Landroid/widget/TextView;

.field private noItemsImage:Landroid/widget/ImageView;

.field private noItemsLayout:Landroid/view/View;

.field protected parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

.field protected position:I

.field positiveString:Ljava/lang/String;

.field protected requestOutstanding:Z

.field protected spinner:Landroid/widget/Spinner;

.field protected spinnerAdapter:Lcom/ebay/mobile/activities/FeedbackFragment$SpinnerAdapter;

.field protected totalPages:I

.field private viewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/ebay/mobile/activities/BaseFragment;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    const/4 v0, 0x1

    .line 79
    iput v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->currentPage:I

    return-void
.end method

.method private getNoItemsImage()I
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 699
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f120957

    .line 700
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f08028c

    goto :goto_0

    :cond_0
    const v1, 0x7f1207e9

    .line 702
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f08028a

    goto :goto_0

    :cond_1
    const v1, 0x7f1207ea

    .line 704
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f08028b

    goto :goto_0

    :cond_2
    const v0, 0x7f080289

    :goto_0
    return v0
.end method

.method private getNoItemsText()Ljava/lang/String;
    .locals 3

    const v0, 0x7f1207f3

    .line 679
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    .line 682
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f120957

    .line 683
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v0, 0x7f1207f6

    .line 684
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v2, 0x7f1207e9

    .line 685
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f1207f4

    .line 686
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v2, 0x7f1207ea

    .line 687
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f1207f5

    .line 688
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method clearFeedbackItems()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 673
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 674
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->adapter:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    const/4 v1, -0x1

    iput v1, v0, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->positionFor90DayLabel:I

    return-void
.end method

.method protected getCommentType()Lcom/ebay/nautilus/domain/data/trading/CommentType;
    .locals 3

    .line 572
    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->ALL:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    .line 573
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getSpinnerValue()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120957

    .line 574
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->POSITIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    goto :goto_0

    :cond_0
    const v2, 0x7f1207e9

    .line 576
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEGATIVE:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    goto :goto_0

    :cond_1
    const v2, 0x7f1207ea

    .line 578
    invoke-virtual {p0, v2}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/CommentType;->NEUTRAL:Lcom/ebay/nautilus/domain/data/trading/CommentType;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getFeedbackDateFormat(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "d/MM/yyyy"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "yyyy/MM/d"

    .line 271
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ebay/mobile/util/Util;->dateFormatForLocale(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getFeedbackType()Lcom/ebay/nautilus/domain/data/trading/FeedbackType;
    .locals 1

    .line 591
    iget v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->position:I

    if-nez v0, :cond_0

    .line 592
    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/FeedbackType;->RECEIVED_AS_SELLER:Lcom/ebay/nautilus/domain/data/trading/FeedbackType;

    return-object v0

    .line 594
    :cond_0
    sget-object v0, Lcom/ebay/nautilus/domain/data/trading/FeedbackType;->RECEIVED_AS_BUYER:Lcom/ebay/nautilus/domain/data/trading/FeedbackType;

    return-object v0
.end method

.method public getSpinnerValue()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    const v0, 0x7f120235

    .line 191
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected issueDataRequest(II)V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getCommentType()Lcom/ebay/nautilus/domain/data/trading/CommentType;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getFeedbackType()Lcom/ebay/nautilus/domain/data/trading/FeedbackType;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->issueDataRequest(IILcom/ebay/nautilus/domain/data/trading/CommentType;Lcom/ebay/nautilus/domain/data/trading/FeedbackType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->requestOutstanding:Z

    .line 563
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    sget-object v0, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->TRANSLUCENT_PROGRESS:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {p1, p2, v0}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/FeedbackFragment;->setHasOptionsMenu(Z)V

    const/4 v0, 0x1

    .line 95
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/activities/FeedbackFragment;->setRetainInstance(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "TabsAdaptor.position"

    .line 98
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->position:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p2, 0x7f0d018d

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    .line 105
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const p2, 0x7f1207b1

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    const p1, 0x7f120235

    .line 107
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->allFeedbackString:Ljava/lang/String;

    const p1, 0x7f120957

    .line 108
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->positiveString:Ljava/lang/String;

    const p1, 0x7f1207ea

    .line 109
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->neutralString:Ljava/lang/String;

    const p1, 0x7f1207e9

    .line 110
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/activities/FeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->negativeString:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    .line 113
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    const p2, 0x7f0a0948

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    const/4 p1, 0x4

    .line 114
    new-array p1, p1, [Ljava/lang/String;

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->allFeedbackString:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->positiveString:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->neutralString:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p2, p1, v1

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->negativeString:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p2, p1, v1

    .line 115
    new-instance p2, Lcom/ebay/mobile/activities/FeedbackFragment$SpinnerAdapter;

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    .line 116
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const v2, 0x1090008

    invoke-direct {p2, p0, v1, v2, p1}, Lcom/ebay/mobile/activities/FeedbackFragment$SpinnerAdapter;-><init>(Lcom/ebay/mobile/activities/FeedbackFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinnerAdapter:Lcom/ebay/mobile/activities/FeedbackFragment$SpinnerAdapter;

    .line 118
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinnerAdapter:Lcom/ebay/mobile/activities/FeedbackFragment$SpinnerAdapter;

    const p2, 0x1090009

    invoke-virtual {p1, p2}, Lcom/ebay/mobile/activities/FeedbackFragment$SpinnerAdapter;->setDropDownViewResource(I)V

    .line 119
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinnerAdapter:Lcom/ebay/mobile/activities/FeedbackFragment$SpinnerAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 120
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 122
    new-instance p1, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    invoke-direct {p1, p0, p2}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;-><init>(Lcom/ebay/mobile/activities/FeedbackFragment;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->adapter:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    .line 123
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->listView:Landroid/widget/ListView;

    .line 124
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->listView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->adapter:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    const p2, 0x7f0a0a74

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->noItems:Landroid/widget/TextView;

    .line 127
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    const p2, 0x7f0a0a76

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->noItemsImage:Landroid/widget/ImageView;

    .line 128
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    const p2, 0x7f0a0a77

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->noItemsLayout:Landroid/view/View;

    if-nez p3, :cond_0

    .line 131
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    invoke-virtual {p2}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getInitialType()Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    move-result-object p2

    iget p2, p2, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->value:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_0

    :cond_0
    const-string p1, "feedbackType"

    .line 135
    invoke-virtual {p3, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 136
    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p1, v0}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->onTabChanged()V

    .line 141
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    return-object p1
.end method

.method protected onGetFeedbackComplete(Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;)V
    .locals 10

    .line 604
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 605
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    .line 608
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->requestOutstanding:Z

    .line 609
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    iget-object v2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    sget-object v3, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->NORMAL:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {v1, v2, v3}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    .line 610
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->isError()Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->adapter:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    if-eqz v1, :cond_a

    .line 612
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->adapter:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->setNotifyOnChange(Z)V

    .line 614
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    if-nez v1, :cond_1

    .line 615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    .line 617
    :cond_1
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackResponse;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackResponse;->getFeedbackList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 619
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    invoke-virtual {v1}, Lcom/ebay/mobile/activities/ViewFeedbackActivity;->getMonths()Ljava/lang/Integer;

    move-result-object v1

    .line 620
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    .line 622
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 625
    :cond_2
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackResponse;

    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackResponse;->getFeedbackList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ebay/nautilus/domain/data/trading/Feedback;

    if-eqz v1, :cond_4

    .line 627
    iget-object v6, v5, Lcom/ebay/nautilus/domain/data/trading/Feedback;->commentTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    .line 628
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 636
    :cond_5
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->adapter:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    invoke-virtual {v1, v4}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->setLastPage(Z)V

    goto :goto_2

    .line 640
    :cond_6
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->clearFeedbackItems()V

    .line 643
    :goto_2
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 646
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->noItems:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getNoItemsText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->noItemsImage:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getNoItemsImage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 650
    :cond_7
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->noItemsLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    const/16 v2, 0x8

    :goto_3
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 651
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v0, 0x8

    :cond_9
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->adapter:Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;

    invoke-virtual {v0}, Lcom/ebay/mobile/activities/FeedbackFragment$ViewFeedbackAdapter;->notifyDataSetChanged()V

    .line 654
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->getResponse()Lcom/ebay/nautilus/domain/net/EbayResponse;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackResponse;

    iget p1, p1, Lcom/ebay/nautilus/domain/net/api/trading/GetFeedbackResponse;->totalNumberOfPages:I

    iput p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->totalPages:I

    goto :goto_4

    .line 658
    :cond_a
    invoke-virtual {p1}, Lcom/ebay/common/net/api/trading/GetFeedbackNetLoader;->getServiceErrorsAndWarnings()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/common/util/EbayErrorUtil;->userNotLoggedIn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 661
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object p1

    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object p1

    const-class v0, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->as(Ljava/lang/Class;)Lcom/ebay/nautilus/kernel/dagger/KernelComponent;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/dagger/DomainComponent;

    invoke-interface {p1}, Lcom/ebay/nautilus/domain/dagger/DomainComponent;->getSignOutHelper()Lcom/ebay/nautilus/domain/SignOutHelper;

    move-result-object p1

    .line 662
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/SignOutHelper;->signOutForIafTokenFailure(Landroid/app/Activity;)V

    goto :goto_4

    .line 665
    :cond_b
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    .line 666
    invoke-static {v2, p1}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->updateLayoutForLoaderError(Lcom/ebay/nautilus/shell/app/BaseActivity;Lcom/ebay/common/content/EbaySimpleNetLoader;)Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    move-result-object p1

    .line 665
    invoke-static {v0, v1, p1}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    :goto_4
    return-void

    :cond_c
    :goto_5
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->cancelAll()V

    .line 715
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->clearFeedbackItems()V

    .line 716
    iget-object p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->noItemsLayout:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 717
    iput p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->currentPage:I

    .line 719
    iget p1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->currentPage:I

    iget p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->position:I

    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/activities/FeedbackFragment;->issueDataRequest(II)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 147
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "feedbackType"

    .line 148
    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTabChanged()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->cancelAll()V

    .line 154
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    iget-object v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->viewGroup:Landroid/view/ViewGroup;

    sget-object v2, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;->NORMAL:Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError;->showLayouts(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/ebay/mobile/viewitem/ItemViewCommonProgressAndError$LayoutState;)V

    .line 155
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->noItemsLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->currentPage:I

    iget v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->position:I

    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/activities/FeedbackFragment;->issueDataRequest(II)V

    :cond_1
    return-void
.end method

.method setupFeedbackType(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Positive"

    .line 245
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f08031e

    .line 247
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 248
    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->positiveString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "Negative"

    .line 250
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p2, 0x7f0802f9

    .line 252
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 253
    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->negativeString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v0, "Neutral"

    .line 255
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f0802fa

    .line 257
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 258
    iget-object p2, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->neutralString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public showItem(Lcom/ebay/nautilus/domain/data/trading/Feedback;)V
    .locals 6

    :try_start_0
    const-string v0, "Seller"

    .line 205
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/trading/Feedback;->role:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Sold:Lcom/ebay/common/ConstantsCommon$ItemKind;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/ebay/common/ConstantsCommon$ItemKind;->Won:Lcom/ebay/common/ConstantsCommon$ItemKind;

    :goto_0
    const/4 v1, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/FeedbackFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 209
    instance-of v3, v2, Lcom/ebay/nautilus/shell/app/TrackingSupport;

    if-eqz v3, :cond_1

    .line 210
    new-instance v1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    move-object v3, v2

    check-cast v3, Lcom/ebay/nautilus/shell/app/TrackingSupport;

    invoke-interface {v3}, Lcom/ebay/nautilus/shell/app/TrackingSupport;->getTrackingEventName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    .line 212
    :cond_1
    new-instance v3, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    iget-wide v4, p1, Lcom/ebay/nautilus/domain/data/trading/Feedback;->itemId:J

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;-><init>(JLcom/ebay/common/ConstantsCommon$ItemKind;Landroid/content/Context;)V

    .line 213
    invoke-virtual {v3, v1}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    .line 219
    invoke-virtual {v3}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->buildAndStartActivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "ViewFeedback"

    const-string/jumbo v1, "showItem exception"

    .line 223
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public showUser(Lcom/ebay/nautilus/domain/data/trading/Feedback;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->parent:Lcom/ebay/mobile/activities/ViewFeedbackActivity;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/trading/Feedback;->commentingUser:Ljava/lang/String;

    iget v1, p0, Lcom/ebay/mobile/activities/FeedbackFragment;->position:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/ebay/mobile/activities/UserDetailActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
