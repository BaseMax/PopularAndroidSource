.class public Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;
.super Ljava/lang/Object;
.source "FieldManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;
    }
.end annotation


# instance fields
.field appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

.field context:Landroid/content/Context;

.field device:Lcom/apptentive/android/sdk/storage/Device;

.field eventData:Lcom/apptentive/android/sdk/storage/EventData;

.field person:Lcom/apptentive/android/sdk/storage/Person;

.field versionHistory:Lcom/apptentive/android/sdk/storage/VersionHistory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apptentive/android/sdk/storage/VersionHistory;Lcom/apptentive/android/sdk/storage/EventData;Lcom/apptentive/android/sdk/storage/Person;Lcom/apptentive/android/sdk/storage/Device;Lcom/apptentive/android/sdk/storage/AppRelease;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-static {p2}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {p3}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p4}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {p5}, Lcom/apptentive/android/sdk/debug/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->versionHistory:Lcom/apptentive/android/sdk/storage/VersionHistory;

    .line 48
    iput-object p3, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    .line 49
    iput-object p4, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->person:Lcom/apptentive/android/sdk/storage/Person;

    .line 50
    iput-object p5, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    .line 51
    iput-object p6, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    return-void
.end method

.method private doGetValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 67
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v1

    .line 69
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/16 v2, 0x16

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_9

    const/4 v2, 0x3

    const/4 v6, 0x5

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 193
    :pswitch_0
    aget-object v0, p1, v4

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->person:Lcom/apptentive/android/sdk/storage/Person;

    if-nez v1, :cond_0

    return-object v5

    .line 197
    :cond_0
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_1
    return-object v5

    .line 213
    :pswitch_2
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->person:Lcom/apptentive/android/sdk/storage/Person;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getEmail()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 211
    :pswitch_3
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->person:Lcom/apptentive/android/sdk/storage/Person;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Person;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :pswitch_4
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->person:Lcom/apptentive/android/sdk/storage/Person;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/storage/Person;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 203
    invoke-virtual {v1}, Lcom/apptentive/android/sdk/storage/CustomData;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 204
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 205
    invoke-virtual {v1, v6}, Lcom/apptentive/android/sdk/storage/CustomData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 158
    :pswitch_5
    aget-object v0, p1, v4

    .line 159
    aget-object v1, p1, v3

    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v1

    .line 160
    sget-object v3, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    .line 177
    :pswitch_6
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 178
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v6, :cond_2

    goto :goto_0

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/storage/EventData;->getTimeOfLastEventInvocation(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 182
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(D)V

    return-object v0

    .line 162
    :pswitch_7
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 163
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v6, :cond_3

    packed-switch p1, :pswitch_data_3

    goto :goto_0

    .line 170
    :pswitch_8
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 171
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    invoke-virtual {v2, v0, p1}, Lcom/apptentive/android/sdk/storage/EventData;->getEventCountForVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v1

    .line 167
    :pswitch_9
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 168
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    invoke-virtual {v2, v0, p1}, Lcom/apptentive/android/sdk/storage/EventData;->getEventCountForVersionCode(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v1

    .line 165
    :cond_3
    new-instance p1, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/storage/EventData;->getEventCountTotal(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    return-object p1

    :cond_4
    :goto_0
    return-object v5

    .line 123
    :pswitch_a
    aget-object v0, p1, v4

    .line 124
    aget-object v1, p1, v3

    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v1

    .line 125
    sget-object v3, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_4

    goto/16 :goto_2

    .line 142
    :pswitch_b
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 143
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v6, :cond_5

    goto/16 :goto_2

    .line 145
    :cond_5
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/storage/EventData;->getTimeOfLastInteractionInvocation(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 147
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(D)V

    return-object v0

    .line 127
    :pswitch_c
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 128
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v6, :cond_6

    packed-switch p1, :pswitch_data_5

    goto/16 :goto_2

    .line 135
    :pswitch_d
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 136
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    invoke-virtual {v2, v0, p1}, Lcom/apptentive/android/sdk/storage/EventData;->getInteractionCountForVersionName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v1

    .line 132
    :pswitch_e
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 133
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    invoke-virtual {v2, v0, p1}, Lcom/apptentive/android/sdk/storage/EventData;->getInteractionCountForVersionCode(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    return-object v1

    .line 130
    :cond_6
    new-instance p1, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->eventData:Lcom/apptentive/android/sdk/storage/EventData;

    invoke-virtual {v1, v0}, Lcom/apptentive/android/sdk/storage/EventData;->getInteractionCountTotal(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    return-object p1

    .line 111
    :pswitch_f
    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 112
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v6, :cond_7

    packed-switch p1, :pswitch_data_6

    .line 120
    new-instance p1, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(D)V

    return-object p1

    .line 118
    :pswitch_10
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->versionHistory:Lcom/apptentive/android/sdk/storage/VersionHistory;

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/storage/VersionHistory;->getTimeAtInstallForVersionName(Ljava/lang/String;)Lcom/apptentive/android/sdk/Apptentive$DateTime;

    move-result-object p1

    return-object p1

    .line 116
    :pswitch_11
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->versionHistory:Lcom/apptentive/android/sdk/storage/VersionHistory;

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/storage/VersionHistory;->getTimeAtInstallForVersionCode(I)Lcom/apptentive/android/sdk/Apptentive$DateTime;

    move-result-object p1

    return-object p1

    .line 114
    :cond_7
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->versionHistory:Lcom/apptentive/android/sdk/storage/VersionHistory;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/VersionHistory;->getTimeAtInstallTotal()Lcom/apptentive/android/sdk/Apptentive$DateTime;

    move-result-object p1

    return-object p1

    .line 99
    :pswitch_12
    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 100
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_7

    .line 108
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 104
    :pswitch_13
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->versionHistory:Lcom/apptentive/android/sdk/storage/VersionHistory;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/VersionHistory;->isUpdateForVersionName()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 102
    :pswitch_14
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->versionHistory:Lcom/apptentive/android/sdk/storage/VersionHistory;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/VersionHistory;->isUpdateForVersionCode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_15
    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 89
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_8

    .line 97
    :pswitch_16
    new-instance p1, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-static {}, Lcom/apptentive/android/sdk/util/Util;->currentTimeSeconds()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/apptentive/android/sdk/Apptentive$DateTime;-><init>(D)V

    return-object p1

    .line 91
    :cond_8
    new-instance p1, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {p1}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>()V

    .line 92
    invoke-static {}, Lcom/apptentive/android/sdk/util/Constants;->getApptentiveSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    return-object p1

    .line 71
    :pswitch_17
    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 72
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_8

    return-object v5

    .line 82
    :pswitch_18
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->isDebug()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 77
    :pswitch_19
    new-instance p1, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {p1}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>()V

    .line 78
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    return-object p1

    .line 74
    :pswitch_1a
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->appRelease:Lcom/apptentive/android/sdk/storage/AppRelease;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/AppRelease;->getVersionCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 219
    :cond_9
    :goto_1
    aget-object v0, p1, v4

    invoke-static {v0}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    if-nez v1, :cond_a

    return-object v5

    .line 223
    :cond_a
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_c

    packed-switch v0, :pswitch_data_9

    goto/16 :goto_2

    .line 287
    :pswitch_1b
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getUuid()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 285
    :pswitch_1c
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getRadioVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 283
    :pswitch_1d
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getProduct()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 281
    :pswitch_1e
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsBuild()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 279
    :pswitch_1f
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 277
    :pswitch_20
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getNetworkType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 275
    :pswitch_21
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getModel()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 273
    :pswitch_22
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getManufacturer()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 271
    :pswitch_23
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleRaw()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 269
    :pswitch_24
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleLanguageCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 267
    :pswitch_25
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getLocaleCountryCode()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_26
    return-object v5

    .line 263
    :pswitch_27
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getDevice()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 261
    :pswitch_28
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCurrentCarrier()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 259
    :pswitch_29
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCpu()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 257
    :pswitch_2a
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getCarrier()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 255
    :pswitch_2b
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBuildType()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 253
    :pswitch_2c
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBuildId()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 251
    :pswitch_2d
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBrand()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 249
    :pswitch_2e
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBootloaderVersion()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :pswitch_2f
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getBoard()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 245
    :pswitch_30
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsApiLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 237
    :pswitch_31
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/storage/Device;->getOsVersion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    const-string p1, "0"

    .line 241
    :cond_b
    new-instance v0, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-direct {v0}, Lcom/apptentive/android/sdk/Apptentive$Version;-><init>()V

    .line 242
    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    return-object v0

    :pswitch_32
    return-object v5

    .line 225
    :cond_c
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 226
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/Device;->getCustomData()Lcom/apptentive/android/sdk/storage/CustomData;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 229
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/storage/CustomData;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 231
    invoke-virtual {v0, v2}, Lcom/apptentive/android/sdk/storage/CustomData;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    :goto_2
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_17
        :pswitch_15
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 0

    .line 55
    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->getValue(Ljava/lang/String;)Ljava/lang/Comparable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    .line 301
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 302
    aget-object v1, p1, v0

    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v1

    .line 304
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/16 v2, 0x16

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    const/4 v6, 0x5

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 418
    :pswitch_0
    aget-object v1, p1, v5

    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->person:Lcom/apptentive/android/sdk/storage/Person;

    if-nez v2, :cond_0

    return-object v4

    .line 422
    :cond_0
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_1
    return-object v4

    :pswitch_2
    const-string p1, "person email"

    return-object p1

    :pswitch_3
    const-string p1, "person name"

    return-object p1

    .line 424
    :pswitch_4
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "person_data[\'%s\']"

    .line 425
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 386
    :pswitch_5
    aget-object v1, p1, v5

    .line 387
    aget-object v7, p1, v3

    invoke-static {v7}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v7

    .line 388
    sget-object v8, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v7}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_2

    goto :goto_0

    .line 405
    :pswitch_6
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 406
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "last time event \'%s\' was invoked"

    .line 408
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 390
    :pswitch_7
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 391
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v6, :cond_2

    packed-switch p1, :pswitch_data_3

    goto :goto_0

    .line 398
    :pswitch_8
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "number of invokes for event \'%s\' for version name \'%s\'"

    .line 399
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 395
    :pswitch_9
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result p1

    const-string v2, "number of invokes for event \'%s\' for version code \'%d\'"

    .line 396
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "number of invokes for event \'%s\'"

    .line 393
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_0
    return-object v4

    .line 354
    :pswitch_a
    aget-object v1, p1, v5

    .line 355
    aget-object v7, p1, v3

    invoke-static {v7}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v7

    .line 356
    sget-object v8, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v7}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v7

    aget v7, v8, v7

    packed-switch v7, :pswitch_data_4

    goto/16 :goto_2

    .line 373
    :pswitch_b
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 374
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v6, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string p1, "last time interaction \'%s\' was invoked"

    .line 376
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 358
    :pswitch_c
    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 359
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v6, :cond_4

    packed-switch p1, :pswitch_data_5

    goto/16 :goto_2

    .line 366
    :pswitch_d
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "number of invokes for interaction \'%s\' for version name \'%s\'"

    .line 367
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 363
    :pswitch_e
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result p1

    const-string v2, "number of invokes for interaction \'%s\' for version code \'%d\'"

    .line 364
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string p1, "number of invokes for interaction \'%s\'"

    .line 361
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v0

    invoke-static {p1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 342
    :pswitch_f
    aget-object p1, p1, v5

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 343
    sget-object v1, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v6, :cond_5

    packed-switch p1, :pswitch_data_6

    return-object v4

    :pswitch_10
    const-string/jumbo p1, "time at install for version name \'%s\'"

    .line 349
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_11
    const-string/jumbo p1, "time at install for version code \'%d\'"

    .line 347
    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/apptentive/android/sdk/util/RuntimeUtils;->getAppVersionCode(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string/jumbo p1, "time at install"

    return-object p1

    .line 330
    :pswitch_12
    aget-object p1, p1, v5

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 331
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_7

    return-object v4

    :pswitch_13
    const-string p1, "app version name changed"

    return-object p1

    :pswitch_14
    const-string p1, "app version code changed"

    return-object p1

    .line 321
    :pswitch_15
    aget-object p1, p1, v5

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 322
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    :pswitch_16
    const-string p1, "current time"

    return-object p1

    :cond_6
    const-string p1, "SDK version"

    return-object p1

    .line 306
    :pswitch_17
    aget-object p1, p1, v5

    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object p1

    .line 307
    sget-object v0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_8

    return-object v4

    :pswitch_18
    const-string p1, "app debuggable"

    return-object p1

    :pswitch_19
    const-string p1, "app version name"

    return-object p1

    :pswitch_1a
    const-string p1, "app version code"

    return-object p1

    .line 435
    :cond_7
    :goto_1
    aget-object v1, p1, v5

    invoke-static {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->parse(Ljava/lang/String;)Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;

    move-result-object v1

    .line 436
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->device:Lcom/apptentive/android/sdk/storage/Device;

    if-nez v2, :cond_8

    return-object v4

    .line 439
    :cond_8
    sget-object v2, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$1;->$SwitchMap$com$apptentive$android$sdk$module$engagement$logic$FieldManager$QueryPart:[I

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager$QueryPart;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_9

    packed-switch v1, :pswitch_data_9

    :goto_2
    return-object v4

    :pswitch_1b
    const-string p1, "UUID"

    return-object p1

    :pswitch_1c
    const-string p1, "device radio version"

    return-object p1

    :pswitch_1d
    const-string p1, "device product"

    return-object p1

    :pswitch_1e
    const-string p1, "device OS build"

    return-object p1

    :pswitch_1f
    const-string p1, "device OS name"

    return-object p1

    :pswitch_20
    const-string p1, "device network type"

    return-object p1

    :pswitch_21
    const-string p1, "device model"

    return-object p1

    :pswitch_22
    const-string p1, "device manufacturer"

    return-object p1

    :pswitch_23
    const-string p1, "device locale"

    return-object p1

    :pswitch_24
    const-string p1, "device language"

    return-object p1

    :pswitch_25
    const-string p1, "device country"

    return-object p1

    :pswitch_26
    const-string p1, "device hardware"

    return-object p1

    :pswitch_27
    const-string p1, "device"

    return-object p1

    :pswitch_28
    const-string p1, "device current carrier"

    return-object p1

    :pswitch_29
    const-string p1, "device CPU"

    return-object p1

    :pswitch_2a
    const-string p1, "device carrier"

    return-object p1

    :pswitch_2b
    const-string p1, "device build type"

    return-object p1

    :pswitch_2c
    const-string p1, "device build id"

    return-object p1

    :pswitch_2d
    const-string p1, "device brand"

    return-object p1

    :pswitch_2e
    const-string p1, "device bootloader version"

    return-object p1

    :pswitch_2f
    const-string p1, "device board"

    return-object p1

    :pswitch_30
    const-string p1, "device API level"

    return-object p1

    :pswitch_31
    const-string p1, "device OS version"

    return-object p1

    :pswitch_32
    return-object v4

    .line 441
    :cond_9
    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device_data[\'%s\']"

    .line 442
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Lcom/apptentive/android/sdk/util/StringUtils;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_17
        :pswitch_15
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x6
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0xb
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Comparable;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/engagement/logic/FieldManager;->doGetValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 60
    invoke-static {p1}, Lcom/apptentive/android/sdk/module/engagement/logic/ClauseParser;->parseValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    return-object p1
.end method
