.class final enum Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$9;
.super Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;
.source "ConditionalOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, p2, v0}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;-><init>(Ljava/lang/String;ILcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 1

    .line 168
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public description(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s (\'%s\') starts with \'%s\'"

    const/4 v1, 0x3

    .line 176
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
