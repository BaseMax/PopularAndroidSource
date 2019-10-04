.class Lcom/webengage/sdk/android/actions/render/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webengage/sdk/android/actions/render/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/actions/render/m;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/actions/render/m;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m$1;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$1;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->g(Lcom/webengage/sdk/android/actions/render/m;)Lcom/webengage/sdk/android/actions/render/m$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$1;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->d(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$1;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->d(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$1;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->b(Lcom/webengage/sdk/android/actions/render/m;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m$1;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v1}, Lcom/webengage/sdk/android/actions/render/m;->d(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$1;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->h(Lcom/webengage/sdk/android/actions/render/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
