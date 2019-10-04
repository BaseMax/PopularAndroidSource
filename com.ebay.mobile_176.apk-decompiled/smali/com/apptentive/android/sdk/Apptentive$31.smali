.class final Lcom/apptentive/android/sdk/Apptentive$31;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->login(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

.field final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    .locals 0

    .line 1439
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$31;->val$token:Ljava/lang/String;

    iput-object p2, p0, Lcom/apptentive/android/sdk/Apptentive$31;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 4

    .line 1443
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$31;->val$token:Ljava/lang/String;

    iget-object v1, p0, Lcom/apptentive/android/sdk/Apptentive$31;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/Apptentive;->access$200(Ljava/lang/String;Lcom/apptentive/android/sdk/Apptentive$LoginCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1445
    sget-object v1, Lcom/apptentive/android/sdk/ApptentiveLogTag;->CONVERSATION:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v2, "Exception while trying to login"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1446
    invoke-static {v0}, Lcom/apptentive/android/sdk/Apptentive;->access$300(Ljava/lang/Exception;)V

    .line 1448
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$31;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    const-string v1, "Exception while trying to login"

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/Apptentive;->access$400(Lcom/apptentive/android/sdk/Apptentive$LoginCallback;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
