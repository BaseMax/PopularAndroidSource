.class public Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/setting/SettingView;

.field private view7f0a045f:Landroid/view/View;

.field private view7f0a0462:Landroid/view/View;

.field private view7f0a0464:Landroid/view/View;

.field private view7f0a0465:Landroid/view/View;

.field private view7f0a046b:Landroid/view/View;

.field private view7f0a046d:Landroid/view/View;

.field private view7f0a046e:Landroid/view/View;

.field private view7f0a046f:Landroid/view/View;

.field private view7f0a0471:Landroid/view/View;

.field private view7f0a0472:Landroid/view/View;

.field private view7f0a0473:Landroid/view/View;

.field private view7f0a0475:Landroid/view/View;

.field private view7f0a0476:Landroid/view/View;

.field private view7f0a0477:Landroid/view/View;

.field private view7f0a0478:Landroid/view/View;

.field private view7f0a0479:Landroid/view/View;

.field private view7f0a047a:Landroid/view/View;

.field private view7f0a047b:Landroid/view/View;

.field private view7f0a047c:Landroid/view/View;

.field private view7f0a047d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/setting/SettingView;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;-><init>(Lcab/snapp/passenger/units/setting/SettingView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/setting/SettingView;Landroid/view/View;)V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->target:Lcab/snapp/passenger/units/setting/SettingView;

    const v0, 0x7f0a0462

    const-string v1, "field \'newsLetterCheckBox\' and method \'onCheckBoxClick\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 70
    const-class v2, Lcab/snapp/snappuikit/SnappCheckBox;

    const-string v3, "field \'newsLetterCheckBox\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCheckBox;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 71
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0462:Landroid/view/View;

    .line 72
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0464

    const-string v1, "field \'newsLetterSummary\' and method \'onItemsTitleOrSummaryClick\'"

    .line 78
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 79
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'newsLetterSummary\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->newsLetterSummary:Landroid/widget/TextView;

    .line 80
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0464:Landroid/view/View;

    .line 81
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$12;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$12;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a046b

    const-string v1, "field \'rideInfoEmailCheckBox\' and method \'onCheckBoxClick\'"

    .line 87
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 88
    const-class v2, Lcab/snapp/snappuikit/SnappCheckBox;

    const-string v3, "field \'rideInfoEmailCheckBox\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCheckBox;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoEmailCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 89
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046b:Landroid/view/View;

    .line 90
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$14;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$14;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a046d

    const-string v1, "field \'rideInfoEmailSummary\' and method \'onItemsTitleOrSummaryClick\'"

    .line 96
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 97
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'rideInfoEmailSummary\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoEmailSummary:Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046d:Landroid/view/View;

    .line 99
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$15;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$15;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a046f

    const-string v1, "field \'rideInfoSMSCheckBox\' and method \'onCheckBoxClick\'"

    .line 105
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 106
    const-class v2, Lcab/snapp/snappuikit/SnappCheckBox;

    const-string v3, "field \'rideInfoSMSCheckBox\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCheckBox;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 107
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046f:Landroid/view/View;

    .line 108
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$16;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$16;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0471

    const-string v1, "field \'rideInfoSMSSummary\' and method \'onItemsTitleOrSummaryClick\'"

    .line 114
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 115
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'rideInfoSMSSummary\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoSMSSummary:Landroid/widget/TextView;

    .line 116
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0471:Landroid/view/View;

    .line 117
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$17;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$17;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0473

    const-string v1, "field \'rideTransactionSMSCheckBox\' and method \'onCheckBoxClick\'"

    .line 123
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 124
    const-class v2, Lcab/snapp/snappuikit/SnappCheckBox;

    const-string v3, "field \'rideTransactionSMSCheckBox\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCheckBox;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->rideTransactionSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 125
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0473:Landroid/view/View;

    .line 126
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$18;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$18;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0475

    const-string v1, "field \'rideTransactionSummary\' and method \'onItemsTitleOrSummaryClick\'"

    .line 132
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 133
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'rideTransactionSummary\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->rideTransactionSummary:Landroid/widget/TextView;

    .line 134
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0475:Landroid/view/View;

    .line 135
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$19;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$19;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a045f

    const-string v1, "field \'statisticInfoCheckBox\' and method \'onCheckBoxClick\'"

    .line 141
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 142
    const-class v2, Lcab/snapp/snappuikit/SnappCheckBox;

    const-string v3, "field \'statisticInfoCheckBox\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCheckBox;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->statisticInfoCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 143
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a045f:Landroid/view/View;

    .line 144
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$20;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$20;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a047b

    const-string v1, "field \'trafficMapCheckBox\' and method \'onCheckBoxClick\'"

    .line 150
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 151
    const-class v2, Lcab/snapp/snappuikit/SnappCheckBox;

    const-string v3, "field \'trafficMapCheckBox\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCheckBox;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 152
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047b:Landroid/view/View;

    .line 153
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$2;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a047c

    const-string v1, "field \'trafficMapSummary\' and method \'onItemsTitleOrSummaryClick\'"

    .line 159
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 160
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'trafficMapSummary\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapSummary:Landroid/widget/TextView;

    .line 161
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047c:Landroid/view/View;

    .line 162
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$3;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0467

    const-string v2, "field \'trafficSectionTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->trafficSectionTitle:Landroid/widget/TextView;

    const v0, 0x7f0a047d

    const-string v1, "field \'trafficShowItemTitle\' and method \'onItemsTitleOrSummaryClick\'"

    .line 169
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 170
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'trafficShowItemTitle\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->trafficShowItemTitle:Landroid/widget/TextView;

    .line 171
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047d:Landroid/view/View;

    .line 172
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$4;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a047a

    const-string v1, "field \'languageSelectTitleTextView\' and method \'onItemsTitleOrSummaryClick\'"

    .line 178
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 179
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'languageSelectTitleTextView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->languageSelectTitleTextView:Landroid/widget/TextView;

    .line 180
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047a:Landroid/view/View;

    .line 181
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$5;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0479

    const-string v1, "field \'languageSelectSummaryTextView\' and method \'onItemsTitleOrSummaryClick\'"

    .line 187
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 188
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'languageSelectSummaryTextView\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/setting/SettingView;->languageSelectSummaryTextView:Landroid/widget/TextView;

    .line 189
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0479:Landroid/view/View;

    .line 190
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$6;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0477

    const-string v1, "field \'defaultWaletTextView\' and method \'onItemsTitleOrSummaryClick\'"

    .line 196
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 197
    const-class v1, Landroid/widget/TextView;

    const v2, 0x7f0a0477

    const-string v3, "field \'defaultWaletTextView\'"

    invoke-static {v0, v2, v3, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcab/snapp/passenger/units/setting/SettingView;->defaultWaletTextView:Landroid/widget/TextView;

    .line 198
    iput-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0477:Landroid/view/View;

    .line 199
    new-instance v1, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$7;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$7;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "method \'onItemsTitleOrSummaryClick\'"

    const v1, 0x7f0a0465

    .line 205
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 206
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0465:Landroid/view/View;

    .line 207
    new-instance v2, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$8;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$8;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a046e

    .line 213
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 214
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046e:Landroid/view/View;

    .line 215
    new-instance v2, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$9;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$9;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0472

    .line 221
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 222
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0472:Landroid/view/View;

    .line 223
    new-instance v2, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$10;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$10;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0476

    .line 229
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 230
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0476:Landroid/view/View;

    .line 231
    new-instance v2, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$11;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$11;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0478

    .line 237
    invoke-static {p2, v1, v0}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 238
    iput-object p2, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0478:Landroid/view/View;

    .line 239
    new-instance v0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$13;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding$13;-><init>(Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;Lcab/snapp/passenger/units/setting/SettingView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->target:Lcab/snapp/passenger/units/setting/SettingView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 252
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->target:Lcab/snapp/passenger/units/setting/SettingView;

    .line 254
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->newsLetterCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 255
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->newsLetterSummary:Landroid/widget/TextView;

    .line 256
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoEmailCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 257
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoEmailSummary:Landroid/widget/TextView;

    .line 258
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 259
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->rideInfoSMSSummary:Landroid/widget/TextView;

    .line 260
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->rideTransactionSMSCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 261
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->rideTransactionSummary:Landroid/widget/TextView;

    .line 262
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->statisticInfoCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 263
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 264
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->trafficMapSummary:Landroid/widget/TextView;

    .line 265
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->trafficSectionTitle:Landroid/widget/TextView;

    .line 266
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->trafficShowItemTitle:Landroid/widget/TextView;

    .line 267
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->languageSelectTitleTextView:Landroid/widget/TextView;

    .line 268
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->languageSelectSummaryTextView:Landroid/widget/TextView;

    .line 269
    iput-object v1, v0, Lcab/snapp/passenger/units/setting/SettingView;->defaultWaletTextView:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0462:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0462:Landroid/view/View;

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0464:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0464:Landroid/view/View;

    .line 275
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046b:Landroid/view/View;

    .line 277
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046d:Landroid/view/View;

    .line 279
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046f:Landroid/view/View;

    .line 281
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0471:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0471:Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0473:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0473:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0475:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0475:Landroid/view/View;

    .line 287
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a045f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a045f:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047b:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047c:Landroid/view/View;

    .line 293
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047d:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a047a:Landroid/view/View;

    .line 297
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0479:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0479:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0477:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0477:Landroid/view/View;

    .line 301
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0465:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0465:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a046e:Landroid/view/View;

    .line 305
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0472:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0472:Landroid/view/View;

    .line 307
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0476:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0476:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0478:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iput-object v1, p0, Lcab/snapp/passenger/units/setting/SettingView_ViewBinding;->view7f0a0478:Landroid/view/View;

    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
