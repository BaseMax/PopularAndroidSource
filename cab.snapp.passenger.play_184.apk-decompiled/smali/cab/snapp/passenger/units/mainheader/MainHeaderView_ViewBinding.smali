.class public Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

.field private view7f0a0373:Landroid/view/View;

.field private view7f0a0374:Landroid/view/View;

.field private view7f0a0375:Landroid/view/View;

.field private view7f0a037b:Landroid/view/View;

.field private view7f0a0384:Landroid/view/View;

.field private view7f0a0387:Landroid/view/View;

.field private view7f0a0389:Landroid/view/View;

.field private view7f0a038a:Landroid/view/View;

.field private view7f0a038c:Landroid/view/View;

.field private view7f0a038d:Landroid/view/View;

.field private view7f0a0392:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;Landroid/view/View;)V
    .locals 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->target:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    .line 59
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0391

    const-string v2, "field \'startButtonsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->startButtonsLayout:Landroid/widget/LinearLayout;

    .line 60
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0376

    const-string v2, "field \'endButtonsLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->endButtonsLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0392

    const-string v1, "field \'titleTextView\' and method \'onMainHeaderTitleClicked\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 62
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'titleTextView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->titleTextView:Landroid/widget/TextView;

    .line 63
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0392:Landroid/view/View;

    .line 64
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0375

    const-string v1, "field \'drawerImageButton\' and method \'onDrawerIbClicked\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'drawerImageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->drawerImageButton:Landroid/widget/ImageButton;

    .line 72
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0375:Landroid/view/View;

    .line 73
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0389

    const-string v1, "field \'searchImageButton\' and method \'onSearchIbClicked\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'searchImageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->searchImageButton:Landroid/widget/ImageButton;

    .line 81
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0389:Landroid/view/View;

    .line 82
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0373

    const-string v1, "field \'backImageButton\' and method \'onBackIbClicked\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 89
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'backImageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->backImageButton:Landroid/widget/ImageButton;

    .line 90
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0373:Landroid/view/View;

    .line 91
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0374

    const-string v1, "field \'cancelImageButton\' and method \'onCancelIbClicked\'"

    .line 97
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 98
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'cancelImageButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelImageButton:Landroid/widget/ImageButton;

    .line 99
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0374:Landroid/view/View;

    .line 100
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$7;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a038a

    const-string v1, "field \'shareRideButton\' and method \'onShareRideClicked\'"

    .line 106
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 107
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'shareRideButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->shareRideButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 108
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038a:Landroid/view/View;

    .line 109
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$8;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0377

    const-string v2, "field \'favoritesContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->favoritesContainer:Landroid/widget/RelativeLayout;

    .line 116
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a038e

    const-string v2, "field \'snappToLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    .line 117
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0390

    const-string v2, "field \'snappToTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToTextView:Landroid/widget/TextView;

    .line 118
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0380

    const-string v2, "field \'priceLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0384

    const-string v1, "field \'promoButton\' and method \'onPromoBtnClicked\'"

    .line 119
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 120
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'promoButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 121
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0384:Landroid/view/View;

    .line 122
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$9;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$9;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const-class v0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    const v1, 0x7f0a037f

    const-string v2, "field \'priceTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    .line 129
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0381

    const-string v2, "field \'priceRialsTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceRialsTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 130
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0379

    const-string v2, "field \'freeRideTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->freeRideTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0382

    const-string v2, "field \'sufficientCreditIv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->sufficientCreditIv:Landroid/widget/ImageView;

    .line 132
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0383

    const-string v2, "field \'sufficientCreditTv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->sufficientCreditTv:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a037e

    const-string v1, "field \'paymentStatusLayout\'"

    .line 133
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->paymentStatusLayout:Landroid/view/View;

    const v0, 0x7f0a037b

    const-string v1, "field \'optionsBtn\' and method \'onOptionsBtnClicked\'"

    .line 134
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 135
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'optionsBtn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 136
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a037b:Landroid/view/View;

    .line 137
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$10;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$10;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0386

    const-string v2, "field \'promoLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoLayout:Landroid/widget/RelativeLayout;

    .line 144
    const-class v0, Landroidx/appcompat/widget/AppCompatEditText;

    const v1, 0x7f0a0385

    const-string v2, "field \'promoEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    const v0, 0x7f0a0387

    const-string v1, "field \'submitPromoButton\' and method \'onSubmitPromoBtnClicked\'"

    .line 145
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 146
    const-class v2, Landroidx/appcompat/widget/AppCompatButton;

    const-string v3, "field \'submitPromoButton\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->submitPromoButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 147
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0387:Landroid/view/View;

    .line 148
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$11;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$11;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const-class v0, Lcab/snapp/snappuikit/SnappLoading;

    const v1, 0x7f0a0388

    const-string v2, "field \'snappLoading\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappLoading;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 155
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a037d

    const-string v2, "field \'optionsContainerLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a037c

    const-string v1, "field \'optionsContainerView\'"

    .line 156
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerView:Landroid/view/View;

    .line 157
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0a038b

    const-string v2, "field \'snappArrivedLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a038d

    const-string v1, "field \'messageToDriverTextView\' and method \'onMessageToDriverTvClicked\'"

    .line 158
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 159
    const-class v2, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v3, "field \'messageToDriverTextView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 160
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038d:Landroid/view/View;

    .line 161
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a038c

    const-string v1, "field \'messageToDriverImageView\' and method \'onMessageToDriverIvClicked\'"

    .line 167
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 168
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'messageToDriverImageView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverImageView:Landroid/widget/ImageView;

    .line 169
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038c:Landroid/view/View;

    .line 170
    new-instance v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a038f

    const-string v1, "field \'snappToLayoutDummy\'"

    .line 176
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayoutDummy:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->target:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 184
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->target:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    .line 186
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->startButtonsLayout:Landroid/widget/LinearLayout;

    .line 187
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->endButtonsLayout:Landroid/widget/LinearLayout;

    .line 188
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->titleTextView:Landroid/widget/TextView;

    .line 189
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->drawerImageButton:Landroid/widget/ImageButton;

    .line 190
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->searchImageButton:Landroid/widget/ImageButton;

    .line 191
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->backImageButton:Landroid/widget/ImageButton;

    .line 192
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->cancelImageButton:Landroid/widget/ImageButton;

    .line 193
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->shareRideButton:Landroidx/appcompat/widget/AppCompatTextView;

    .line 194
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->favoritesContainer:Landroid/widget/RelativeLayout;

    .line 195
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayout:Landroid/widget/LinearLayout;

    .line 196
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToTextView:Landroid/widget/TextView;

    .line 197
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceLayout:Landroid/widget/LinearLayout;

    .line 198
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 199
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceTv:Lcab/snapp/passenger/units/footer/ride_request_footer/SnappCountingTextView;

    .line 200
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->priceRialsTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 201
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->freeRideTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 202
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->sufficientCreditIv:Landroid/widget/ImageView;

    .line 203
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->sufficientCreditTv:Landroidx/appcompat/widget/AppCompatTextView;

    .line 204
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->paymentStatusLayout:Landroid/view/View;

    .line 205
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsBtn:Landroidx/appcompat/widget/AppCompatButton;

    .line 206
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoLayout:Landroid/widget/RelativeLayout;

    .line 207
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->promoEditText:Landroidx/appcompat/widget/AppCompatEditText;

    .line 208
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->submitPromoButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 209
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappLoading:Lcab/snapp/snappuikit/SnappLoading;

    .line 210
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerLayout:Landroid/widget/LinearLayout;

    .line 211
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->optionsContainerView:Landroid/view/View;

    .line 212
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappArrivedLayout:Landroid/widget/RelativeLayout;

    .line 213
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->messageToDriverImageView:Landroid/widget/ImageView;

    .line 215
    iput-object v1, v0, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->snappToLayoutDummy:Landroid/view/View;

    .line 217
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0392:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0392:Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0375:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0375:Landroid/view/View;

    .line 221
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0389:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0389:Landroid/view/View;

    .line 223
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0373:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0373:Landroid/view/View;

    .line 225
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0374:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0374:Landroid/view/View;

    .line 227
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038a:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0384:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0384:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a037b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a037b:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0387:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a0387:Landroid/view/View;

    .line 235
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038d:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;->view7f0a038c:Landroid/view/View;

    return-void

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
