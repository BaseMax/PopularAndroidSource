.class Lcom/webengage/sdk/android/i$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/webengage/sdk/android/i;->onAnonymousIdChanged(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/webengage/sdk/android/i;


# direct methods
.method constructor <init>(Lcom/webengage/sdk/android/i;Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/i$9;->d:Lcom/webengage/sdk/android/i;

    iput-object p2, p0, Lcom/webengage/sdk/android/i$9;->a:Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;

    iput-object p3, p0, Lcom/webengage/sdk/android/i$9;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/webengage/sdk/android/i$9;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/i$9;->a:Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;

    iget-object v1, p0, Lcom/webengage/sdk/android/i$9;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/webengage/sdk/android/i$9;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/webengage/sdk/android/callbacks/StateChangeCallbacks;->onAnonymousIdChanged(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
