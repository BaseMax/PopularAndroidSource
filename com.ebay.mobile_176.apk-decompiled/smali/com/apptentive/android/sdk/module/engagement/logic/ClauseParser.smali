.class public Lcom/apptentive/android/sdk/module/engagement/logic/ClauseParser;
.super Ljava/lang/Object;
.source "ClauseParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/Clause;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 27
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "+ Parsing Interaction Criteria."

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 29
    sget-object p0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "+ Interaction Criteria is null."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 32
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/module/engagement/logic/ClauseParser;->parse(Ljava/lang/String;Ljava/lang/Object;)Lcom/apptentive/android/sdk/module/engagement/logic/Clause;

    move-result-object p0

    .line 34
    sget-object v0, Lcom/apptentive/android/sdk/ApptentiveLogTag;->INTERACTIONS:Lcom/apptentive/android/sdk/ApptentiveLogTag;

    const-string v1, "+ Finished parsing Interaction Criteria."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->v(Lcom/apptentive/android/sdk/ApptentiveLogTag;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)Lcom/apptentive/android/sdk/module/engagement/logic/Clause;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 41
    sget-object p0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->$and:Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->name()Ljava/lang/String;

    move-result-object p0

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {p0}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/ClauseParser$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$LogicalOperator:[I

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalOperator;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 53
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalClause;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/logic/ConditionalClause;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 51
    :pswitch_0
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 49
    :pswitch_1
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 47
    :pswitch_2
    new-instance v0, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/module/engagement/logic/LogicalClause;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 70
    :cond_0
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0

    .line 72
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 73
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v0

    .line 74
    :cond_2
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 75
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v0

    .line 76
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    return-object v0

    .line 78
    :cond_4
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_5

    .line 79
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v0

    .line 80
    :cond_5
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 81
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 82
    :cond_6
    instance-of v0, p0, Lcom/apptentive/android/sdk/Apptentive$Version;

    if-eqz v0, :cond_7

    return-object p0

    .line 84
    :cond_7
    instance-of v0, p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    if-eqz v0, :cond_8

    return-object p0

    .line 86
    :cond_8
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    .line 87
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "_type"

    .line 88
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    :try_start_0
    const-string/jumbo v4, "version"

    .line 91
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 92
    new-instance v1, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>(Lorg/json/JSONObject;)V

    return-object v1

    :cond_9
    const-string v4, "datetime"

    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 94
    new-instance v1, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-direct {v1, v0}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(Lorg/json/JSONObject;)V

    return-object v1

    .line 96
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v4, "Error parsing complex parameter with unrecognized name: \"%s\""

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/RuntimeException;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/apptentive/android/sdk/util/Util;->classToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "Error parsing complex parameter: %s"

    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 102
    :cond_b
    new-instance p0, Ljava/lang/RuntimeException;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v1, "_type"

    aput-object v1, v0, v2

    const-string v1, "Error: Complex type parameter missing \"%s\"."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    return-object p0
.end method
