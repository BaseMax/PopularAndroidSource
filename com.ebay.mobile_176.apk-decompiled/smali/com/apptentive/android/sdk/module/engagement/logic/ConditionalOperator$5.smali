.class final enum Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$5;
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

    .line 96
    invoke-direct {p0, p1, p2, v0}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator;-><init>(Ljava/lang/String;ILcom/apptentive/android/sdk/module/engagement/logic/ConditionalOperator$1;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 105
    :cond_1
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-gtz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public description(Ljava/lang/String;Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s (\'%s\') is less than or equal to \'%s\'"

    const/4 v1, 0x3

    .line 110
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
