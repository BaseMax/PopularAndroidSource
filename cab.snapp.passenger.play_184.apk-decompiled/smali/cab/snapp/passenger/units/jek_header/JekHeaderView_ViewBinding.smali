.class public Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/jek_header/JekHeaderView;

.field private view7f0a034e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/jek_header/JekHeaderView;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;-><init>(Lcab/snapp/passenger/units/jek_header/JekHeaderView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/jek_header/JekHeaderView;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;->target:Lcab/snapp/passenger/units/jek_header/JekHeaderView;

    .line 31
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a0351

    const-string v2, "field \'creditTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->creditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 32
    const-class v0, Landroidx/appcompat/widget/AppCompatTextView;

    const v1, 0x7f0a034f

    const-string v2, "field \'addCreditTextView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p1, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->addCreditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a0350

    const-string v2, "field \'creditHolder\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->creditHolder:Landroid/widget/LinearLayout;

    const v0, 0x7f0a034e

    const-string v1, "method \'onAddCreditClicked\'"

    .line 34
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 35
    iput-object p2, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;->view7f0a034e:Landroid/view/View;

    .line 36
    new-instance v0, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding$1;-><init>(Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;Lcab/snapp/passenger/units/jek_header/JekHeaderView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;->target:Lcab/snapp/passenger/units/jek_header/JekHeaderView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;->target:Lcab/snapp/passenger/units/jek_header/JekHeaderView;

    .line 51
    iput-object v1, v0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->creditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 52
    iput-object v1, v0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->addCreditTextView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    iput-object v1, v0, Lcab/snapp/passenger/units/jek_header/JekHeaderView;->creditHolder:Landroid/widget/LinearLayout;

    .line 55
    iget-object v0, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;->view7f0a034e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lcab/snapp/passenger/units/jek_header/JekHeaderView_ViewBinding;->view7f0a034e:Landroid/view/View;

    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
