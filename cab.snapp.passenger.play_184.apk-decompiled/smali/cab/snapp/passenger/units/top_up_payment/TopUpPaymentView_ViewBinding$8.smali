.class final Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$8;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;-><init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

.field final synthetic b:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$8;->b:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$8;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 95
    iget-object p1, p0, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView_ViewBinding$8;->a:Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/top_up_payment/TopUpPaymentView;->onApWalletTabClicked()V

    return-void
.end method
