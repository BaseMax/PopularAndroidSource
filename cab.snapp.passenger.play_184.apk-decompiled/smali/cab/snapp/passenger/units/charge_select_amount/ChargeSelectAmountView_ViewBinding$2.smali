.class final Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;-><init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

.field final synthetic b:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$2;->b:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$2;->a:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView_ViewBinding$2;->a:Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge_select_amount/ChargeSelectAmountView;->onIncreaseClicked()V

    return-void
.end method
