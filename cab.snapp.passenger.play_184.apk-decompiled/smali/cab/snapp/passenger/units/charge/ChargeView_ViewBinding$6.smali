.class final Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$6;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;-><init>(Lcab/snapp/passenger/units/charge/ChargeView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/charge/ChargeView;

.field final synthetic b:Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;Lcab/snapp/passenger/units/charge/ChargeView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$6;->b:Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$6;->a:Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 120
    iget-object p1, p0, Lcab/snapp/passenger/units/charge/ChargeView_ViewBinding$6;->a:Lcab/snapp/passenger/units/charge/ChargeView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/charge/ChargeView;->onSelectMobileNumberFromContactsClicked()V

    return-void
.end method
