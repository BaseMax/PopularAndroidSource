.class public Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

.field private b:Lcab/snapp/snappdialog/b;

.field bottomButtonsLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a012f
    .end annotation
.end field

.field private c:Lcab/snapp/snappdialog/b;

.field cabTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0130
    .end annotation
.end field

.field callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0131
    .end annotation
.end field

.field private d:Z

.field driverAvatarImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0336
    .end annotation
.end field

.field driverNameTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0133
    .end annotation
.end field

.field messageLayout:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0338
    .end annotation
.end field

.field messageLayoutIconImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0337
    .end annotation
.end field

.field messageLayoutTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0339
    .end annotation
.end field

.field payCostLoading:Lcab/snapp/snappuikit/SnappLoading;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0137
    .end annotation
.end field

.field payCostTextView:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0136
    .end annotation
.end field

.field plateNumberLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0135
    .end annotation
.end field

.field rootView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0335
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 0

    .line 386
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->b:Lcab/snapp/snappdialog/b;

    if-eqz p1, :cond_0

    .line 388
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 247
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->c:Lcab/snapp/snappdialog/b;

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b;->dismiss()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$OhjzjSzNpAVuzpaCyA75frsHRNM(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$fRyQLPwgPXHJ29lawW2jeUpe8pk(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public changeviewStateToFailedToLoadDriverInfo()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->bottomButtonsLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 173
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setClickable(Z)V

    .line 175
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setClickable(Z)V

    return-void
.end method

.method public changeviewStateToSuccussfullLoadDriverInfo()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->bottomButtonsLayout:Landroid/view/View;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 185
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setClickable(Z)V

    .line 187
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->callDriverButton:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setClickable(Z)V

    return-void
.end method

.method public dismissDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 397
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->a(Landroid/view/View;)V

    return-void
.end method

.method public displayRideIsFreeDialog()V
    .locals 5

    .line 235
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120109

    .line 240
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v2, 0x7f1200e5

    .line 242
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 244
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1200af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v2

    .line 243
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v2, 0x7f120170

    new-instance v3, Lcab/snapp/passenger/units/footer/driver_assigned_footer/-$$Lambda$DriverAssignedFooterView$fRyQLPwgPXHJ29lawW2jeUpe8pk;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/-$$Lambda$DriverAssignedFooterView$fRyQLPwgPXHJ29lawW2jeUpe8pk;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;)V

    .line 246
    invoke-virtual {v0, v2, v3}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v2, 0x1

    .line 252
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setCancelable(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 253
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->c:Lcab/snapp/snappdialog/b;

    .line 256
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->c:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public getDriverAvatarImageView()Landroid/widget/ImageView;
    .locals 1

    .line 145
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->driverAvatarImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public hidePayCostLoading()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public loadDriverAvatar(I)V
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/x;

    move-result-object p1

    const v0, 0x7f0801d3

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->placeholder(I)Lcom/squareup/picasso/x;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/f/l;

    invoke-direct {v0}, Lcab/snapp/passenger/f/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/x;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->driverAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    return-void
.end method

.method public loadDriverAvatar(Ljava/lang/String;)V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 303
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/x;

    move-result-object p1

    const v0, 0x7f0801d3

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->placeholder(I)Lcom/squareup/picasso/x;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/f/l;

    invoke-direct {v0}, Lcab/snapp/passenger/f/l;-><init>()V

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->transform(Lcom/squareup/picasso/ae;)Lcom/squareup/picasso/x;

    move-result-object p1

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->driverAvatarImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/x;->into(Landroid/widget/ImageView;)V

    :cond_1
    return-void
.end method

.method onCallClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0131
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onCallDriverClicked()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 153
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 154
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method onMessageCloseBtnClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0337
        }
    .end annotation

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->showMessageOfDriverReallotment(Z)V

    return-void
.end method

.method onPayCostClicked()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0136
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;->onPayCostClicked()V

    return-void
.end method

.method public setDriverName(Ljava/lang/String;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->driverNameTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPlateNumber(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 319
    new-instance v0, Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->plateNumberLayout:Landroid/widget/LinearLayout;

    .line 320
    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setViewFrame(Landroid/view/ViewGroup;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setZoneType(I)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object p1

    .line 322
    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setIsMotorcycle(Z)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object p1

    .line 323
    invoke-virtual {p1, p3}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setMainNumberPartA(Ljava/lang/String;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object p1

    .line 324
    invoke-virtual {p1, p4}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setMainNumberPartB(Ljava/lang/String;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object p1

    .line 325
    invoke-virtual {p1, p5}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setIranId(Ljava/lang/String;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object p1

    .line 326
    invoke-virtual {p1, p6}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->setMainCharacter(Ljava/lang/String;)Lcab/snapp/snappuikit/SnappPlateNumberView$a;

    move-result-object p1

    .line 327
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappPlateNumberView$a;->build()Lcab/snapp/snappuikit/SnappPlateNumberView;

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 30
    check-cast p1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->setPresenter(Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/c;

    return-void
.end method

.method public setVehicleType(Ljava/lang/String;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->cabTypeTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showMessageOfDriverReallotment(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 196
    iget-boolean p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->d:Z

    if-nez p1, :cond_0

    .line 198
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayout:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayoutTextView:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->d:Z

    return-void

    .line 204
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayout:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->messageLayoutTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPayCostLoading()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostLoading:Lcab/snapp/snappuikit/SnappLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/SnappLoading;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->payCostTextView:Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    return-void
.end method

.method public showReceiptFailedDialog()V
    .locals 4

    const/4 v0, 0x0

    .line 368
    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->a(Landroid/view/View;)V

    .line 370
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120115

    .line 371
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIconFont(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->isErrorInformation(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v1, 0x7f12020c

    .line 374
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 376
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12020b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v1

    .line 375
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/footer/driver_assigned_footer/-$$Lambda$DriverAssignedFooterView$OhjzjSzNpAVuzpaCyA75frsHRNM;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/-$$Lambda$DriverAssignedFooterView$OhjzjSzNpAVuzpaCyA75frsHRNM;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;)V

    const v2, 0x7f120060

    .line 378
    invoke-virtual {v0, v2, v1}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->b:Lcab/snapp/snappdialog/b;

    .line 381
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->b:Lcab/snapp/snappdialog/b;

    invoke-virtual {v0}, Lcab/snapp/snappdialog/b;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2

    .line 356
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    return-void
.end method

.method public translateDownBaseView()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public translateUpBaseView()V
    .locals 3

    .line 264
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
