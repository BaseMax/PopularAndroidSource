.class final Lcom/apptentive/android/sdk/Apptentive$32;
.super Lcom/apptentive/android/sdk/util/threading/DispatchTask;
.source "Apptentive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptentive/android/sdk/Apptentive;->notifyFailure(Lcom/apptentive/android/sdk/Apptentive$LoginCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

.field final synthetic val$errorMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apptentive/android/sdk/Apptentive$LoginCallback;Ljava/lang/String;)V
    .locals 0

    .line 1468
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$32;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    iput-object p2, p0, Lcom/apptentive/android/sdk/Apptentive$32;->val$errorMessage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/apptentive/android/sdk/util/threading/DispatchTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 2

    .line 1471
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$32;->val$callback:Lcom/apptentive/android/sdk/Apptentive$LoginCallback;

    iget-object v1, p0, Lcom/apptentive/android/sdk/Apptentive$32;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/apptentive/android/sdk/Apptentive$LoginCallback;->onLoginFail(Ljava/lang/String;)V

    return-void
.end method
