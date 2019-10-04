.class final Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$3;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;-><init>(Lcab/snapp/passenger/units/payment/PaymentView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/payment/PaymentView;

.field final synthetic b:Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;Lcab/snapp/passenger/units/payment/PaymentView;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$3;->b:Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$3;->a:Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcab/snapp/passenger/units/payment/PaymentView_ViewBinding$3;->a:Lcab/snapp/passenger/units/payment/PaymentView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/payment/PaymentView;->increaseOfAmountRequestingChargeClick(Landroid/view/View;)V

    return-void
.end method
