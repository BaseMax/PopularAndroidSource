.class Lcom/webengage/sdk/android/i$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webengage/sdk/android/i;->onGCMRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/webengage/sdk/android/i;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/i$1;->c:Lcom/webengage/sdk/android/i;

    iput-object p2, p0, Lcom/webengage/sdk/android/i$1;->a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    iput-object p3, p0, Lcom/webengage/sdk/android/i$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/i$1;->a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/webengage/sdk/android/i$1;->c:Lcom/webengage/sdk/android/i;

    iget-object v1, v1, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/i$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;->onGCMRegistered(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
