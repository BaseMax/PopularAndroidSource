.class public Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/box_options/BoxOptionsView;

.field private view7f0a0326:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/box_options/BoxOptionsView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;-><init>(Lcab/snapp/passenger/units/box_options/BoxOptionsView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/box_options/BoxOptionsView;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;->target:Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    .line 31
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a032b

    const-string v2, "field \'fullNameEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->fullNameEditText:Landroid/widget/EditText;

    .line 32
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a032c

    const-string v2, "field \'mobileEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->mobileEditText:Landroid/widget/EditText;

    .line 33
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a0327

    const-string v2, "field \'addressEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->addressEditText:Landroid/widget/EditText;

    .line 34
    const-class v0, Landroid/widget/EditText;

    const v1, 0x7f0a032a

    const-string v2, "field \'descEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->descEditText:Landroid/widget/EditText;

    .line 35
    const-class v0, Lcab/snapp/snappuikit/SnappCheckBox;

    const v1, 0x7f0a0328

    const-string v2, "field \'cashByRecipientCheckBox\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappCheckBox;

    iput-object v0, p1, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->cashByRecipientCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    const v0, 0x7f0a0326

    const-string v1, "method \'onContainerClicked\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    iput-object p2, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;->view7f0a0326:Landroid/view/View;

    .line 38
    new-instance v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;Lcab/snapp/passenger/units/box_options/BoxOptionsView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;->target:Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;->target:Lcab/snapp/passenger/units/box_options/BoxOptionsView;

    .line 53
    iput-object v1, v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->fullNameEditText:Landroid/widget/EditText;

    .line 54
    iput-object v1, v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->mobileEditText:Landroid/widget/EditText;

    .line 55
    iput-object v1, v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->addressEditText:Landroid/widget/EditText;

    .line 56
    iput-object v1, v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->descEditText:Landroid/widget/EditText;

    .line 57
    iput-object v1, v0, Lcab/snapp/passenger/units/box_options/BoxOptionsView;->cashByRecipientCheckBox:Lcab/snapp/snappuikit/SnappCheckBox;

    .line 59
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;->view7f0a0326:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcab/snapp/passenger/units/box_options/BoxOptionsView_ViewBinding;->view7f0a0326:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
