.class final Lcab/snapp/passenger/units/welcome/WelcomeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/welcome/WelcomeView;->animateLowerPartButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/welcome/WelcomeView;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/welcome/WelcomeView;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView$1;->a:Lcab/snapp/passenger/units/welcome/WelcomeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 247
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 248
    iget-object p1, p0, Lcab/snapp/passenger/units/welcome/WelcomeView$1;->a:Lcab/snapp/passenger/units/welcome/WelcomeView;

    iget-object p1, p1, Lcab/snapp/passenger/units/welcome/WelcomeView;->mainLayout:Landroid/widget/LinearLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method
