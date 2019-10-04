.class final Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;-><init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

.field final synthetic b:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$3;->b:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$3;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView_ViewBinding$3;->a:Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/driver_assigned_footer/DriverAssignedFooterView;->onPayCostClicked()V

    return-void
.end method
