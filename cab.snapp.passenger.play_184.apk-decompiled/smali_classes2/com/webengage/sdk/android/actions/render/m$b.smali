.class final Lcom/webengage/sdk/android/actions/render/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/webengage/sdk/android/actions/render/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/actions/render/m;


# direct methods
.method private constructor <init>(Lcom/webengage/sdk/android/actions/render/m;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m$b;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/webengage/sdk/android/actions/render/m;Lcom/webengage/sdk/android/actions/render/m$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/actions/render/m$b;-><init>(Lcom/webengage/sdk/android/actions/render/m;)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xc

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/m$b;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/m;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/m$b;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-virtual {p1}, Lcom/webengage/sdk/android/actions/render/m;->dismiss()V

    :goto_0
    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/m$b;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/m;->h(Lcom/webengage/sdk/android/actions/render/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
