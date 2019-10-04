.class final Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$4;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;-><init>(Lcab/snapp/passenger/units/welcome/WelcomeView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/welcome/WelcomeView;

.field final synthetic b:Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;Lcab/snapp/passenger/units/welcome/WelcomeView;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$4;->b:Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$4;->a:Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView_ViewBinding$4;->a:Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/welcome/WelcomeView;->onFourthLanguageClicked()V

    return-void
.end method
