.class public Lf/a/a/c/b/j;
.super Ljava/lang/Object;
.source "SyncAPICallHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/c/b/k;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lf/a/a/c/b/k;


# direct methods
.method public constructor <init>(Lf/a/a/c/b/k;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/b/j;->b:Lf/a/a/c/b/k;

    iput-object p2, p0, Lf/a/a/c/b/j;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "InlineRequests"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lf/a/a/c/b/j;->b:Lf/a/a/c/b/k;

    iget-wide v4, v4, Lf/a/a/c/b/k;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "cached"

    const-string v3, "false"

    .line 3
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "status"

    const-string v3, "Error"

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 5
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    .line 6
    iget-object v0, p0, Lf/a/a/c/b/j;->b:Lf/a/a/c/b/k;

    iget-object v0, v0, Lf/a/a/c/b/k;->b:Lf/a/a/c/b/o$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 7
    iget-object v2, p0, Lf/a/a/c/b/j;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lf/a/a/c/e;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
