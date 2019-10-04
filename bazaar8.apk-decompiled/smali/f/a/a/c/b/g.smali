.class public Lf/a/a/c/b/g;
.super Lf/a/a/c/b/o;
.source "CachedAPICallHandler.java"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lir/cafebazaar/inline/platform/InlineApplication;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lf/a/a/c/b/o;-><init>(Lir/cafebazaar/inline/platform/InlineApplication;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    iput-object p4, p0, Lf/a/a/c/b/g;->d:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lf/a/a/c/b/g;Lf/a/a/c/b/o$a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/a/a/c/b/o;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method

.method public static synthetic b(Lf/a/a/c/b/g;Lf/a/a/c/b/o$a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/a/a/c/b/o;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method

.method public static synthetic c(Lf/a/a/c/b/g;Lf/a/a/c/b/o$a;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lf/a/a/c/b/o;->a(Lf/a/a/c/b/o$a;)V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/c/b/o$a;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lf/a/a/c/b/o;->b:Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->a()Lf/a/a/a/b/a;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/c/b/g;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/a/a/a/b/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 4
    invoke-interface {p1}, Lf/a/a/c/e;->a()V

    .line 5
    iget-object v0, p0, Lf/a/a/c/b/o;->b:Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->a()Lf/a/a/a/b/a;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/c/b/g;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/a/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    instance-of v0, v3, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lf/a/a/c/b/o;->b:Lir/cafebazaar/inline/platform/InlineApplication;

    invoke-virtual {v0}, Lir/cafebazaar/inline/platform/InlineApplication;->a()Lf/a/a/a/b/a;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/c/b/g;->d:Ljava/lang/String;

    invoke-interface {v0, v1}, Lf/a/a/a/b/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lf/a/a/c/e;->a(Ljava/lang/Object;)V

    .line 8
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "InlineRequests"

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "cached"

    const-string v2, "true"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    const-string v1, "status"

    const-string v2, "OK"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/crashlytics/android/answers/AnswersEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/answers/CustomEvent;

    .line 12
    invoke-virtual {p1, v0}, Lcom/crashlytics/android/answers/Answers;->logCustom(Lcom/crashlytics/android/answers/CustomEvent;)V

    goto :goto_0

    .line 13
    :cond_0
    instance-of v0, v3, Lf/a/a/a/b;

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lf/a/a/c/b/d;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lf/a/a/c/b/d;-><init>(Lf/a/a/c/b/g;Ljava/lang/Object;Lf/a/a/c/b/o$a;J)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lf/a/a/c/b/e;

    invoke-direct {v1, p0, p1}, Lf/a/a/c/b/e;-><init>(Lf/a/a/c/b/g;Lf/a/a/c/b/o$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lf/a/a/c/b/f;

    invoke-direct {v1, p0, p1}, Lf/a/a/c/b/f;-><init>(Lf/a/a/c/b/g;Lf/a/a/c/b/o$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method
