.class final Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;-><init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

.field final synthetic b:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$1;->b:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView_ViewBinding$1;->a:Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/login/loginWithOTP/LoginWithOTPView;->onBackClicked()V

    return-void
.end method
