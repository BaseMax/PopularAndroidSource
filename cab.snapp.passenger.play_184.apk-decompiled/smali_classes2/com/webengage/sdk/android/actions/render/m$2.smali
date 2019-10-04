.class Lcom/webengage/sdk/android/actions/render/m$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webengage/sdk/android/actions/render/m;->b()V
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

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->g(Lcom/webengage/sdk/android/actions/render/m;)Lcom/webengage/sdk/android/actions/render/m$c;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->g(Lcom/webengage/sdk/android/actions/render/m;)Lcom/webengage/sdk/android/actions/render/m$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->g(Lcom/webengage/sdk/android/actions/render/m;)Lcom/webengage/sdk/android/actions/render/m$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->g(Lcom/webengage/sdk/android/actions/render/m;)Lcom/webengage/sdk/android/actions/render/m$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m$c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0xc

    if-ne v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m;->dismissAllowingStateLoss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m;->dismiss()V

    :goto_0
    invoke-static {}, Lcom/webengage/sdk/android/actions/database/DataHolder;->get()Lcom/webengage/sdk/android/actions/database/DataHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/webengage/sdk/android/actions/database/DataHolder;->a(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->i(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->i(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->b(Lcom/webengage/sdk/android/actions/render/m;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v1}, Lcom/webengage/sdk/android/actions/render/m;->i(Lcom/webengage/sdk/android/actions/render/m;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m;->dismissAllowingStateLoss()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/m;->dismiss()V

    :goto_1
    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/m$2;->a:Lcom/webengage/sdk/android/actions/render/m;

    invoke-static {v0}, Lcom/webengage/sdk/android/actions/render/m;->h(Lcom/webengage/sdk/android/actions/render/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method
