.class final Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;-><init>(Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

.field final synthetic b:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding$1;->b:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding$1;->a:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView_ViewBinding$1;->a:Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge_select_type/ChargeSelectTypeView;->onCloseClicked()V

    return-void
.end method
