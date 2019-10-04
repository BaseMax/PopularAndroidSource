.class Lcom/webengage/sdk/android/i$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webengage/sdk/android/i;->onAppUpgraded(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/webengage/sdk/android/i;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;II)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/i$4;->d:Lcom/webengage/sdk/android/i;

    iput-object p2, p0, Lcom/webengage/sdk/android/i$4;->a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    iput p3, p0, Lcom/webengage/sdk/android/i$4;->b:I

    iput p4, p0, Lcom/webengage/sdk/android/i$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/webengage/sdk/android/i$4;->a:Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/webengage/sdk/android/i$4;->d:Lcom/webengage/sdk/android/i;

    iget-object v1, v1, Lcom/webengage/sdk/android/i;->a:Landroid/content/Context;

    iget v2, p0, Lcom/webengage/sdk/android/i$4;->b:I

    iget v3, p0, Lcom/webengage/sdk/android/i$4;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/webengage/sdk/android/callbacks/LifeCycleCallbacks;->onAppUpgraded(Landroid/content/Context;II)V

    :cond_0
    return-void
.end method
