.class public final Lcom/crashlytics/android/core/CrashPromptDialog$3;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;->create(Landroid/app/Activity;Le/a/a/a/a/g/p;Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;)Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public final synthetic val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

.field public final synthetic val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    iput-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$alwaysSendCallback:Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback;->sendUserReportsWithoutPrompting(Z)V

    .line 2
    iget-object p2, p0, Lcom/crashlytics/android/core/CrashPromptDialog$3;->val$latch:Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;

    invoke-virtual {p2, v0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->setOptIn(Z)V

    .line 3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
