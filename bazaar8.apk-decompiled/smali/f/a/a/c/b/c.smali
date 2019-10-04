.class public Lf/a/a/c/b/c;
.super Ljava/lang/Object;
.source "CachedAPICallHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/c/b/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/c/b/d;


# direct methods
.method public constructor <init>(Lf/a/a/c/b/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/c/b/c;->a:Lf/a/a/c/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/a/a/c/b/c;->a:Lf/a/a/c/b/d;

    iget-object v1, v0, Lf/a/a/c/b/d;->b:Lf/a/a/c/b/o$a;

    iget-object v0, v0, Lf/a/a/c/b/d;->a:Ljava/lang/Object;

    check-cast v0, Lf/a/a/a/b;

    invoke-virtual {v0}, Lf/a/a/a/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lf/a/a/c/e;->a(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    new-instance v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "InlineRequests"

    invoke-direct {v1, v2}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lf/a/a/c/b/c;->a:Lf/a/a/c/b/d;

    iget-wide v4, v4, Lf/a/a/c/b/d;->c:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-virtual {v1, v3, v2}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "cached"

    const-string v3, "true"

    .line 4
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v2, "status"

    const-string v3, "OK"

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/answers/CustomEvent;

    .line 6
    invoke-virtual {v0, v1}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    return-void
.end method
