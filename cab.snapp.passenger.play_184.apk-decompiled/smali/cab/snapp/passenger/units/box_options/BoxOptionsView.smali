.class public Lcab/snapp/passenger/units/box_options/BoxOptionsView;
.super Landroid/widget/ScrollView;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/BaseView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ScrollView;",
        "Lcab/snapp/arch/protocol/BaseView<",
        "Lcab/snapp/passenger/units/box_options/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcab/snapp/passenger/units/box_options/c;

.field addressEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0327
    .end annotation
.end field

.field cashByRecipientCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0328
    .end annotation
.end field

.field descEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a032a
    .end annotation
.end field

.field fullNameEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a032b
    .end annotation
.end field

.field mobileEditText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a032c
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onContainerClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a0326
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/c/c;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 76
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 77
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public setAddressText(Ljava/lang/String;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->addressEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setAddressTextChangeListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->addressEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setCashByRecipientCheckBoxChecked(Z)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->cashByRecipientCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setCashByRecipientCheckBoxListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->cashByRecipientCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    invoke-virtual {v0, p1}, Lcab/snapp/snappuikit/SnappCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->descEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDescriptionTextChangeListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->descEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setFullNameText(Ljava/lang/String;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->fullNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFullNameTextChangeListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->fullNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public setMobileText(Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->mobileEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMobileTextChangeListener(Landroid/text/TextWatcher;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->mobileEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 0

    .line 24
    check-cast p1, Lcab/snapp/passenger/units/box_options/c;

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->setPresenter(Lcab/snapp/passenger/units/box_options/c;)V

    return-void
.end method

.method public setPresenter(Lcab/snapp/passenger/units/box_options/c;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->a:Lcab/snapp/passenger/units/box_options/c;

    return-void
.end method
