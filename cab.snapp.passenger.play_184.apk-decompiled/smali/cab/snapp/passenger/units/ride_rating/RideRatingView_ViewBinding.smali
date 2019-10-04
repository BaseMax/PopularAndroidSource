.class public Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/ride_rating/RideRatingView;

.field private view7f0a0279:Landroid/view/View;

.field private view7f0a041c:Landroid/view/View;

.field private view7f0a0420:Landroid/view/View;

.field private view7f0a0422:Landroid/view/View;

.field private view7f0a0427:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;-><init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView;Landroid/view/View;)V
    .locals 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    .line 46
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0a042c

    const-string v2, "field \'sceneContainerFl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->sceneContainerFl:Landroid/widget/FrameLayout;

    .line 47
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a027a

    const-string v2, "field \'toolbarTitleTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->toolbarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a0279

    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 49
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'toolbarCancelButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->toolbarCancelButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 51
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0279:Landroid/view/View;

    .line 52
    new-instance v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;Lcab/snapp/passenger/units/ride_rating/RideRatingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f0a042d

    .line 59
    const-class v1, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    const-string v2, "field \'starBar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->starBar:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    const v0, 0x7f0a042b

    .line 60
    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "field \'rideTitleTextView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rideTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a042f

    .line 61
    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "field \'driverInfoTextView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->driverInfoTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a042a

    .line 62
    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "field \'rideAddressTextView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rideAddressTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a0421

    .line 63
    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "field \'rateDescriptionTextView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rateDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a042e

    .line 64
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'driverImageView\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->driverImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a041f

    .line 65
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "field \'fakeCommentLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->fakeCommentLayout:Landroid/view/ViewGroup;

    const v0, 0x7f0a0420

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 67
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'fakeCommentSubmitButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->fakeCommentSubmitButton:Lcab/snapp/snappuikit/SnappButton;

    if-eqz v1, :cond_1

    .line 69
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0420:Landroid/view/View;

    .line 70
    new-instance v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;Lcab/snapp/passenger/units/ride_rating/RideRatingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f0a041e

    .line 77
    const-class v1, Landroid/widget/EditText;

    const-string v2, "field \'fakeCommentEditText\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->fakeCommentEditText:Landroid/widget/EditText;

    const v0, 0x7f0a041b

    .line 78
    const-class v1, Landroid/widget/EditText;

    const-string v2, "field \'commentEditText\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->commentEditText:Landroid/widget/EditText;

    const v0, 0x7f0a0426

    .line 79
    const-class v1, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a0423

    .line 80
    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const-string v2, "field \'tabLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findOptionalViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    const v0, 0x7f0a0425

    .line 81
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->feedbackTabDividerRed:Landroid/view/View;

    const v0, 0x7f0a041c

    .line 82
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 83
    const-class v2, Lcab/snapp/snappuikit/SnappButton;

    const-string v3, "field \'commentSubmitBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->commentSubmitBtn:Lcab/snapp/snappuikit/SnappButton;

    if-eqz v1, :cond_2

    .line 85
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a041c:Landroid/view/View;

    .line 86
    new-instance v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;Lcab/snapp/passenger/units/ride_rating/RideRatingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f0a0427

    .line 93
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'writeCommentBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->writeCommentBtn:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v1, :cond_3

    .line 96
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0427:Landroid/view/View;

    .line 97
    new-instance v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;Lcab/snapp/passenger/units/ride_rating/RideRatingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f0a0422

    .line 104
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 106
    iput-object p2, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0422:Landroid/view/View;

    .line 107
    new-instance v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;Lcab/snapp/passenger/units/ride_rating/RideRatingView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->target:Lcab/snapp/passenger/units/ride_rating/RideRatingView;

    .line 123
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->sceneContainerFl:Landroid/widget/FrameLayout;

    .line 124
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->toolbarTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 125
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->toolbarCancelButton:Landroid/widget/ImageView;

    .line 126
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->starBar:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    .line 127
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rideTitleTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 128
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->driverInfoTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 129
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rideAddressTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->rateDescriptionTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->driverImageView:Landroid/widget/ImageView;

    .line 132
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->fakeCommentLayout:Landroid/view/ViewGroup;

    .line 133
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->fakeCommentSubmitButton:Lcab/snapp/snappuikit/SnappButton;

    .line 134
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->fakeCommentEditText:Landroid/widget/EditText;

    .line 135
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->commentEditText:Landroid/widget/EditText;

    .line 136
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 137
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 138
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->feedbackTabDividerRed:Landroid/view/View;

    .line 139
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->commentSubmitBtn:Lcab/snapp/snappuikit/SnappButton;

    .line 140
    iput-object v1, v0, Lcab/snapp/passenger/units/ride_rating/RideRatingView;->writeCommentBtn:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0279:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0279:Landroid/view/View;

    .line 146
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0420:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0420:Landroid/view/View;

    .line 150
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a041c:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a041c:Landroid/view/View;

    .line 154
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0427:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0427:Landroid/view/View;

    .line 158
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0422:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lcab/snapp/passenger/units/ride_rating/RideRatingView_ViewBinding;->view7f0a0422:Landroid/view/View;

    :cond_4
    return-void

    .line 120
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
