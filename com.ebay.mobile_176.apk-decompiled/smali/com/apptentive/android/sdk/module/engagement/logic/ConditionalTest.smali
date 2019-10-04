.class public Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalTest;
.super Ljava/lang/Object;
.source "ConditionalTest.java"


# instance fields
.field public operator:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

.field public parameter:Ljava/lang/Comparable;


# direct methods
.method public constructor <init>(Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;Ljava/lang/Object;)V
    .locals 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "      + ConditionalTest: %s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/apptentive/android/sdk/util/Util;->classToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalTest;->operator:Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;

    if-eqz p2, :cond_1

    .line 25
    instance-of p1, p2, Ljava/lang/Comparable;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/apptentive/android/sdk/util/Util;->classToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v4

    const-string p2, "Encountered non-Comparable parameter: %s"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/Comparable;

    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalTest;->parameter:Ljava/lang/Comparable;

    return-void
.end method
