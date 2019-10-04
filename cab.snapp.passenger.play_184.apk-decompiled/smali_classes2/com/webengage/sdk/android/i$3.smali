.class Lcom/webengage/sdk/android/i$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webengage/sdk/android/i;->onAppInstalled(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/webengage/sdk/android/i;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/i$3;->c:Lcom/webengage/sdk/android/i;

    iput-object p2, p0, Lcom/webengage/sdk/android/i$3;->a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    iput-object p3, p0, Lcom/webengage/sdk/android/i$3;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/i$3;->a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/webengage/sdk/android/i$3;->c:Lcom/webengage/sdk/android/i;

    iget-object v1, v1, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/i$3;->b:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;->onAppInstalled(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
